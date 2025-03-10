#!/bin/bash
# get root dir of the shell env
ROOT_DIR="$(dirname "$(realpath "$0")")"
echo $ROOT_DIR
mkdir -p "$ROOT_DIR/temp/pages/_bibliography"

# copy _bibliography
cp "$ROOT_DIR/_bibliography/references.bib" "$ROOT_DIR/temp/pages/_bibliography/"

# run Jekyll，specifi the configuration file and distination
bundle exec jekyll build --config "$ROOT_DIR/_config.yml" --destination "$ROOT_DIR/output"
