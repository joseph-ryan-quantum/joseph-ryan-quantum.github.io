#!/usr/bin/env bash
# Builds files/cv.pdf and _includes/cv-generated.html from cv/main.tex.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CV_DIR="$ROOT_DIR/cv"
BUILD_DIR="$(mktemp -d)"

# --- PDF ---
cp "$CV_DIR"/*.tex "$BUILD_DIR"/
if compgen -G "$CV_DIR/*.bib" > /dev/null; then cp "$CV_DIR"/*.bib "$BUILD_DIR"/; fi
(cd "$BUILD_DIR" && pdflatex -interaction=nonstopmode main.tex > /dev/null)
cp "$BUILD_DIR/main.pdf" "$ROOT_DIR/files/cv.pdf"

# --- HTML ---
# \hfill (used to right-align dates) confuses pandoc's LaTeX reader and silently
# drops the text after it, so swap it for a plain separator before conversion.
sed 's/\\hfill/ --- /g' "$CV_DIR/main.tex" > "$BUILD_DIR/main_pandoc.tex"
pandoc "$BUILD_DIR/main_pandoc.tex" -f latex -t html --wrap=none -o "$ROOT_DIR/_includes/cv-generated.html"

rm -rf "$BUILD_DIR"
echo "Built files/cv.pdf and _includes/cv-generated.html"
