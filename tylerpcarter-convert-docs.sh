#!/bin/bash

# Declare input argument as a variable
file=replication-and-decline

# Convert markdown to HTML
echo "Converting paper to HTML document."
pandoc -S -o $file.html $file.md

# Convert markdown to DOCX
echo "Converting paper to DOCX document."
pandoc -S -o $file.docx $file.md

# Convert markdown to ODT
echo "Converting paper to ODT document."
pandoc -S -o $file.odt $file.md

# Convert markdown to PDF
echo "Converting paper to PDF document."
pandoc replication-and-decline.md --latex-engine=pdflatex -o replication-and-decline.pdf

echo "Converting paper to LATEX document."
pandoc -S -o $file.tex $file.md

echo "Converting paper to TXT document."
pandoc -S -o $file.txt $file.md

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Coverted $file to HTML, DOCX, ODT, PDF, TEX, and TXT."