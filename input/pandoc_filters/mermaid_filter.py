#!/usr/bin/env python

from pandocfilters import toJSONFilter, Image, Para, Header, Str, Space, Link, RawInline
import os
import subprocess
import hashlib
import sys

LOG_FILE = "mermaid_filter.log"
ENABLE_LOG = False  # 设置为 False 关闭日志，True 启用日志
figure_counter = 0  # 自动编号计数器

def log(message):
    if ENABLE_LOG:
        with open(LOG_FILE, 'a') as f:
            f.write(f"{message}\n")

def mermaid_to_image(key, value, format, meta):
    global figure_counter
    log(f"Node type: {key}, Value: {value}")
    if key == 'CodeBlock':
        [[ident, classes, keyvals], code] = value
        log(f"Classes: {classes}, Keyvals: {keyvals}, Code: {code}")
        if 'mermaid' in classes:
            # 检查 id、filename 和 caption 属性
            figure_id = None
            filename = None
            caption_text = None
            for k, v in keyvals:
                if k == 'id':
                    figure_id = v
                    log(f"Custom figure ID specified: {figure_id}")
                if k == 'filename':
                    filename = v
                    log(f"Custom filename specified: {filename}")
                if k == 'caption':
                    caption_text = v
                    log(f"Custom caption specified: {caption_text}")

            # 如果未指定 id，使用自动编号
            if not figure_id:
                figure_counter += 1
                figure_id = f"fig-{figure_counter}"
                log(f"Assigned auto figure ID: {figure_id}")

            # 设置默认标题
            if not caption_text:
                caption_text = f"Figure {figure_id.split('-')[1]}"
            
            # 文件路径处理
            input_file_path = sys.argv[1] if len(sys.argv) > 1 else "input.md"
            input_dir = os.path.dirname(os.path.abspath(input_file_path))
            image_dir = os.path.join(input_dir, "..", "images")
            os.makedirs(image_dir, exist_ok=True)

            # 生成文件名
            if filename:
                base_name = os.path.splitext(filename)[0]
                output_image_file = os.path.join(image_dir, f"{base_name}.png")
                relative_image_path = os.path.join("..", "images", f"{base_name}.png")
            else:
                code_hash = hashlib.md5(code.encode()).hexdigest()
                output_image_file = os.path.join(image_dir, f"mermaid_{code_hash}.png")
                relative_image_path = os.path.join("..", "images", f"mermaid_{code_hash}.png")

            input_mmd_file = f"mermaid_{hashlib.md5(code.encode()).hexdigest()}.mmd"
            with open(input_mmd_file, 'w') as f:
                f.write(code)
            try:
                subprocess.run(['mmdc', '-i', input_mmd_file, '-o', output_image_file], 
                              check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                log(f"Generated: {output_image_file}")
            except subprocess.CalledProcessError as e:
                log(f"Error running mmdc: {e}")
                return None
            os.remove(input_mmd_file)

            # 生成带编号的标题和 ID
            caption = [Str(caption_text)]
            header = Header(3, [figure_id, [], []], caption)
            image = Image([ident, [], keyvals], [], [relative_image_path, ""])
            return [header, Para([image])]

    # 处理引用（例如 [Figure @fig-custom-id] 或 [Figure @fig-1]）
    elif key == 'Para':
        content = value
        new_content = []
        i = 0
        while i < len(content):
            if (i + 2 < len(content) and 
                content[i]['t'] == 'Str' and content[i]['c'].startswith('[Figure @') and 
                content[i + 1]['t'] == 'Str' and 
                content[i + 2]['t'] == 'Str' and content[i + 2]['c'] == ']'):
                ref_id = content[i]['c'][8:]  # 提取 @fig-custom-id 或 @fig-1
                link_text = [Str(f"Figure {ref_id.split('-')[1]}")]  # 显示编号部分
                new_content.append(Link(['', [], []], link_text, [f"#{ref_id}", ""]))
                i += 3
            else:
                new_content.append(content[i])
                i += 1
        return Para(new_content)

    # 支持 LaTeX 引用
    elif key == 'RawInline' and value[0] == 'latex' and value[1].startswith('\\ref{'):
        ref_id = value[1][5:-1]  # 提取 fig-custom-id 或 fig-1
        if format == 'latex':
            return RawInline('latex', f'\\ref{{{ref_id}}}')
        else:
            return Link(['', [], []], [Str(f"Figure {ref_id.split('-')[1]}")], [f"#{ref_id}", ""])

    return None

if __name__ == "__main__":
    log("Filter is running")
    toJSONFilter(mermaid_to_image)
