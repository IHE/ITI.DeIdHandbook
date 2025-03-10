import os
import re
import argparse
import shutil
from pathlib import Path

INPUT_DIR = "input/pages-source"
TEMP_DIR = "input/pagecontent"

os.makedirs(TEMP_DIR, exist_ok=True)

TOC_ITEM_PATTERN = r"^(\s*)- (?:\[([^\]]+)\](?:\(([^\)]+)\))?|(.+))$"
HEADING_PATTERN = r"^(#+)\s+(.+)$"
FIGURE_PATTERN = r"<figure>.*?(?:{%\s*include\s*([^\s]+)\s*%}).*?<figcaption><b>(Figure[^<]*?):\s*([^<]+)</b></figcaption>.*?</figure>"

def parse_top_level_chapters(top_level_path):
    with open(top_level_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    structure = {}
    chapter_num = 0
    current_top_chapter = None

    for line in lines:
        toc_match = re.match(TOC_ITEM_PATTERN, line.rstrip())
        if toc_match:
            indent = len(toc_match.group(1)) // 2
            title_with_brackets = toc_match.group(2)
            file_link = toc_match.group(3)
            title_without_brackets = toc_match.group(4)

            title = title_with_brackets or title_without_brackets
            if not title:
                continue

            if indent == 0:
                chapter_num += 1
                if file_link:
                    structure[file_link] = {"title": title, "number": str(chapter_num), "subsections": {}}
                    current_top_chapter = None
                else:
                    current_top_chapter = {"title": title, "number": str(chapter_num), "subsections": {}}
                    structure[f"__top__{chapter_num}"] = current_top_chapter
            elif indent == 1 and current_top_chapter and file_link:
                sub_num = len(current_top_chapter["subsections"]) + 1
                structure[file_link] = {
                    "title": title,
                    "number": f"{current_top_chapter['number']}.{sub_num}",
                    "subsections": {}
                }
                current_top_chapter["subsections"][title] = structure[file_link]
    return structure

def extract_subsections(filepath, max_level=2):
    with open(filepath, "r", encoding="utf-8") as f:
        lines = f.readlines()

    subsections = {}
    level_counters = [0] * (max_level - 1)

    for line in lines:
        heading_match = re.match(HEADING_PATTERN, line.strip())
        if heading_match:
            level = len(heading_match.group(1))
            if 2 <= level <= max_level:
                title = heading_match.group(2).strip()
                anchor = title.lower().replace(" ", "-")
                level_counters[level-2] += 1
                level_counters[level-1:] = [0] * (len(level_counters) - (level-1))
                number = ".".join(str(n) for n in level_counters[:level-1])
                subsections[title] = {"number": number, "anchor": anchor, "level": level}
    return subsections

def generate_toc(structure, max_level):
    toc_lines = []
    processed_top_chapters = set()

    for file_link, info in structure.items():
        chapter_num = info["number"]
        title = info["title"]

        if file_link.startswith("__top__"):
            top_num = chapter_num
            if top_num not in processed_top_chapters:
                toc_lines.append(f"- [{top_num} {title}]")
                processed_top_chapters.add(top_num)
            continue

        html_file = file_link.replace(".md", ".html")
        if "." not in chapter_num:  # 普通顶级章节
            toc_lines.append(f"- [{chapter_num} {title}]({html_file})")
            effective_max_level = max_level
        else:  # 特殊顶级章节的子章节
            top_num = chapter_num.split(".")[0]
            if top_num not in processed_top_chapters:
                parent_title = structure[f"__top__{top_num}"]["title"]
                toc_lines.append(f"- [{top_num} {parent_title}]")
                processed_top_chapters.add(top_num)
            toc_lines.append(f"  - [{chapter_num} {title}]({html_file})")
            effective_max_level = max_level - 1  # 特殊章节层级减1

        # 提取子章节，根据effective_max_level控制层级
        for sub_title, sub_info in info["subsections"].items():
            if sub_info["level"] <= effective_max_level:
                sub_num = f"{chapter_num}.{sub_info['number']}"
                anchor_prefix = sub_num.replace(".", "")
                anchor = f"{anchor_prefix}-{sub_info['anchor']}"
                indent = "  " * sub_info["level"]
                toc_lines.append(f"{indent}- [{sub_num} {sub_title}]({html_file}#{anchor})")

    with open(os.path.join(TEMP_DIR, "chapters_toc.md"), "w", encoding="utf-8") as f:
        f.write("\n".join(toc_lines) + "\n")

def process_chapter_file(filepath, structure):
    chapter_file = os.path.basename(filepath)
    if chapter_file not in structure:
        return None

    with open(filepath, "r", encoding="utf-8") as f:
        lines = f.readlines()

    chapter_num = structure[chapter_file]["number"]
    figure_counters = {chapter_num: 0}
    level_counters = [0] * 5

    new_lines = []
    current_section = chapter_num
    figure_buffer = []

    for line in lines:
        heading_match = re.match(HEADING_PATTERN, line.strip())
        if heading_match:
            if figure_buffer:
                figure_text = "".join(figure_buffer)
                figure_match = re.search(FIGURE_PATTERN, figure_text, re.DOTALL)
                if figure_match:
                    filename = figure_match.group(1)
                    old_number = figure_match.group(2)
                    caption = figure_match.group(3)
                    figure_counters[current_section] += 1
                    new_number = f"Figure {current_section}-{figure_counters[current_section]}"
                    new_figure = (
                        f"<figure>\n"
                        f"{{% include {filename} %}}\n"
                        f"<figcaption><b>{new_number}: {caption}</b></figcaption>\n"
                        f"</figure>\n"
                    )
                    new_lines.append(new_figure)
                else:
                    new_lines.extend(figure_buffer)
                figure_buffer = []

            level = len(heading_match.group(1))
            title = heading_match.group(2).strip()

            if level > len(level_counters):
                level_counters.extend([0] * (level - len(level_counters) + 1))
            if level > 1:
                level_counters[level-2] += 1
                level_counters[level-1:] = [0] * (len(level_counters) - (level-1))

            if level == 1:
                number = chapter_num
            else:
                number_parts = [int(n) for n in chapter_num.split(".")] + level_counters[:level-1]
                number = ".".join(str(n) for n in number_parts)

            current_section = number
            figure_counters[number] = figure_counters.get(number, 0)
            new_lines.append(f"{'#' * level} {number} {title}\n")
            continue

        if "<figure>" in line:
            figure_buffer = [line]
        elif figure_buffer and "</figure>" not in line:
            figure_buffer.append(line)
        elif figure_buffer and "</figure>" in line:
            figure_buffer.append(line)
            figure_text = "".join(figure_buffer)
            figure_match = re.search(FIGURE_PATTERN, figure_text, re.DOTALL)
            if figure_match:
                filename = figure_match.group(1)
                old_number = figure_match.group(2)
                caption = figure_match.group(3)
                figure_counters[current_section] += 1
                new_number = f"Figure {current_section}-{figure_counters[current_section]}"
                new_figure = (
                    f"<figure>\n"
                    f"{{% include {filename} %}}\n"
                    f"<figcaption><b>{new_number}: {caption}</b></figcaption>\n"
                    f"</figure>\n"
                )
                new_lines.append(new_figure)
            else:
                new_lines.extend(figure_buffer)
            figure_buffer = []
        elif not figure_buffer:
            new_lines.append(line)

    if figure_buffer:
        new_lines.extend(figure_buffer)

    return "".join(new_lines)

def main():
    parser = argparse.ArgumentParser(description="Generate TOC and process Markdown files.")
    parser.add_argument("--top-level", default="chapters_top_level.md", help="Top-level chapters file")
    parser.add_argument("--sub-level", type=int, default=2, help="Max subsection level to extract (default: 2)")
    args = parser.parse_args()

    top_level_path = os.path.join(INPUT_DIR, args.top_level)
    if not os.path.exists(top_level_path):
        raise FileNotFoundError(f"Top-level file {top_level_path} not found!")

    structure = parse_top_level_chapters(top_level_path)

    all_md_files = set()
    for root, _, files in os.walk(INPUT_DIR):
        for file in files:
            if file.endswith(".md"):
                rel_path = os.path.relpath(os.path.join(root, file), INPUT_DIR)
                all_md_files.add(rel_path)

    for file_link in structure:
        if not file_link.startswith("__top__"):
            chapter_path = os.path.join(INPUT_DIR, file_link)
            if os.path.exists(chapter_path):
                structure[file_link]["subsections"] = extract_subsections(chapter_path, args.sub_level)
                new_content = process_chapter_file(chapter_path, structure)
                if new_content:
                    output_path = os.path.join(TEMP_DIR, file_link)
                    os.makedirs(os.path.dirname(output_path), exist_ok=True)
                    with open(output_path, "w", encoding="utf-8") as f:
                        f.write(new_content)

    generate_toc(structure, args.sub_level)

    listed_files = {file_link for file_link in structure if not file_link.startswith("__top__")}
    for md_file in all_md_files:
        if md_file not in listed_files and md_file != args.top_level:
            src_path = os.path.join(INPUT_DIR, md_file)
            dst_path = os.path.join(TEMP_DIR, md_file)
            os.makedirs(os.path.dirname(dst_path), exist_ok=True)
            shutil.copy2(src_path, dst_path)

if __name__ == "__main__":
    main()
