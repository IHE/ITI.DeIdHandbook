from pandocfilters import toJSONFilter, Image, Para
import os
import subprocess
import hashlib
import sys

LOG_FILE = "mermaid_filter.log"
ENABLE_LOG = False  # 设置为 False 关闭日志，True 启用日志

def log(message):
    if ENABLE_LOG:
        with open(LOG_FILE, 'a') as f:
            f.write(f"{message}\n")

def mermaid_to_image(key, value, format, meta):
    log(f"Node type: {key}, Value: {value}")
    if key == 'CodeBlock':
        [[ident, classes, keyvals], code] = value
        log(f"Classes: {classes}, Keyvals: {keyvals}, Code: {code}")
        if 'mermaid' in classes:
            log("Found Mermaid in CodeBlock")
            # 获取输入文件路径
            input_file_path = sys.argv[1] if len(sys.argv) > 1 else "input.md"
            input_dir = os.path.dirname(os.path.abspath(input_file_path))
            image_dir = os.path.join(input_dir, "..", "images")
            os.makedirs(image_dir, exist_ok=True)  # 确保目录存在

            # 检查是否指定了文件名
            filename = None
            for k, v in keyvals:
                if k == 'filename':
                    filename = v
                    log(f"Custom filename specified: {filename}")
                    break

            # 生成文件名
            if filename:
                # 使用指定的文件名（确保是安全的文件名）
                base_name = os.path.splitext(filename)[0]  # 移除扩展名（如果有）
                output_image_file = os.path.join(image_dir, f"{base_name}.png")
                relative_image_path = os.path.join("..", "images", f"{base_name}.png")
            else:
                # 默认使用哈希值
                code_hash = hashlib.md5(code.encode()).hexdigest()
                output_image_file = os.path.join(image_dir, f"mermaid_{code_hash}.png")
                relative_image_path = os.path.join("..", "images", f"mermaid_{code_hash}.png")

            input_mmd_file = f"mermaid_{hashlib.md5(code.encode()).hexdigest()}.mmd"  # 临时文件仍用哈希

            # 生成 Mermaid 图表
            with open(input_mmd_file, 'w') as f:
                f.write(code)
            try:
                subprocess.run(['mmdc', '-i', input_mmd_file, '-o', output_image_file], 
                              check=True, 
                              stdout=subprocess.PIPE, 
                              stderr=subprocess.PIPE)
                log(f"Generated: {output_image_file}")
            except subprocess.CalledProcessError as e:
                log(f"Error running mmdc: {e}")
                return None
            os.remove(input_mmd_file)
            # 返回图片节点
            return Para([Image([ident, [], keyvals], [], [relative_image_path, ""])])
    return None

if __name__ == "__main__":
    log("Filter is running")
    toJSONFilter(mermaid_to_image)
