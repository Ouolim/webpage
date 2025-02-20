#!/bin/bash
rm -rf docs
mkdir -p docs/content
mkdir -p docs/assets
mkdir -p docs/static

cp index.html docs/
cp -r content/* docs/content/
cp -r assets/* docs/assets/
cp -r static/* docs/static/

for file in notes/*.md; do
    filename=$(basename "$file" .md)
    pandoc "$file" -s --template=templates/template.html -o "docs/content/$filename.html" --mathjax --metadata title="$file"
done
echo "Local generation complete!"