# Requirements
The task is to create a Python script that processes Markdown files in the input/pages-source directory, generates a table of contents (chapters_toc.md), and outputs processed files to the input/pagecontent directory. The requirements are as follows:

1. Automatic Chapter Numbering:
- All Markdown files listed in chapters_top_level.md must have their headings (#, ##, ###, etc.) automatically numbered.
- Normal top-level chapters (e.g., - [Security Considerations](security.md)) are numbered sequentially (e.g., 1, 1.1, 1.1.1).
- Special top-level chapters (e.g., - Exemplar) lack links and serve as containers for subchapters, numbered sequentially (e.g., 2), with subchapters numbered as 2.1, 2.1.1, etc.
- Numbering applies to all heading levels in the processed files, regardless of the --sub-level parameter.
2. Automatic Figure Numbering:
- Figures in Markdown files (identified by <figure> tags with {% include %} and <figcaption>) must be automatically numbered.
- Figure numbers are prefixed with the current section number (e.g., Figure 1.1-1 for the first figure in section 1.1), incrementing within each section.
3. Automatic Table of Contents (TOC) Generation:
- Generate chapters_toc.md based on chapters_top_level.md.
- Normal top-level chapters include subsections up to the depth specified by --sub-level (e.g., --sub-level=2 includes # and ## as 1 and 1.1).
- Special top-level chapters include subchapters, but their subsection depth is reduced by 1 compared to normal chapters (e.g., --sub-level=2 includes only # as 2.1, --sub-level=3 includes # and ## as 2.1 and 2.1.1).
- TOC entries link to HTML files (e.g., security.html) with anchors for subsections (e.g., #11-threats).
4. File Handling:
- Listed files in chapters_top_level.md are processed with numbering and copied to input/pagecontent.
- Unlisted Markdown files in input/pages-source are copied to input/pagecontent without modification, preserving directory structure.
5. Command-Line Control:
- --top-level: Specifies the input TOC file (default: chapters_top_level.md).
- --sub-level: Controls the maximum heading level for TOC extraction (default: 2).
# Solution
The script implements the following functionality:

1. Chapter Parsing:
Uses a regex pattern to parse chapters_top_level.md, distinguishing normal and special top-level chapters, and builds a structure for numbering and TOC generation.
2. Chapter Numbering:
Processes each listed file, applying sequential numbering to all headings based on their level and parent chapter number.
3. Figure Numbering:
Identifies <figure> blocks, extracts the include directive and caption, and assigns a unique number within the current section.
4. TOC Generation:
Creates chapters_toc.md with entries for normal and special chapters, adjusting subsection depth dynamically (max_level for normal, max_level - 1 for special subchapters).
5. File Management:
Copies processed files to input/pagecontent with numbering, and unlisted files without changes using shutil.copy2.
