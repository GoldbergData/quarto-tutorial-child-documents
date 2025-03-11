#!/bin/bash

# Define output directory (GitHub Pages serves from `docs/`)
OUTPUT_DIR="docs"

# Ensure Quarto is installed
if ! command -v quarto &> /dev/null
then
    echo "Quarto not found. Please install Quarto from https://quarto.org/"
    exit 1
fi

echo "Rendering Quarto project..."

# Render HTML and PDF versions in the current directory
quarto render index.qmd --to html
quarto render index.qmd --to pdf

# Ensure docs/ folder exists
mkdir -p $OUTPUT_DIR

echo "Cleaning up previous output in $OUTPUT_DIR/..."
rm -rf $OUTPUT_DIR/index.html
rm -rf $OUTPUT_DIR/index.pdf
rm -rf $OUTPUT_DIR/index_files  # Remove any existing index_files/

echo "Moving output files to $OUTPUT_DIR/..."

# Move rendered files into docs/
mv index.html $OUTPUT_DIR/
mv index.pdf $OUTPUT_DIR/

# Move supporting files (plots, images, etc.) into docs/, ensuring a clean move
if [ -d "index_files" ]; then
    mv index_files $OUTPUT_DIR/
fi

# Commit and push updates
git add $OUTPUT_DIR/
git commit -m "Updated rendered HTML, PDF, and supporting files"
git push origin main

echo "Rendering complete. Visit your GitHub Pages site to view the report."