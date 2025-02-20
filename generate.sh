#!/bin/bash
mkdir -p docs
for file in notes/*.md; do
    filename=$(basename "$file" .md)
    pandoc "$file" -s --template=templates/template.html -o "docs/$filename.html" --mathjax --metadata title="$file"
done
echo "Local generation complete!"