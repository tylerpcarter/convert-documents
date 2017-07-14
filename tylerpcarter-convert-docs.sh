#!/bin/bash

# Declare input argument as a variable
file=replication-and-decline

# Convert markdown to HTML
pandoc -o $file.html $file.md


# Convert markdown to DOCX
pandoc -o $file.docx $file.md

# Convert markdown to ODT
pandoc -o $file.docx $file.md

# Convert markdown to PDF
pandon -o $file.pdf $file.md

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Coverted "$file" to HTML, DOCX, ODT, PDF, and insertFileTypeHere"