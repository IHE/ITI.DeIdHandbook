#!/bin/bash
# 获取脚本所在目录（根目录）
ROOT_DIR="$(dirname "$(realpath "$0")")"
mkdir -p "$ROOT_DIR/temp/pages/_bibliography"

# copy _bibliography
cp "$ROOT_DIR/_bibliography/references.bib" "$ROOT_DIR/temp/pages/_bibliography/"

# 运行 Jekyll，指定配置文件和输出目录
bundle exec jekyll build --config "$ROOT_DIR/_config.yml" --destination "$ROOT_DIR/output"
