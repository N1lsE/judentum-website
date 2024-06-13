#!/bin/bash

# Loop through all jpg and png files in the current directory
for file in *.jpeg *.JPG *.jpg *.png; do
	# Extract the filename without the extension and the file extension
	filename=$(basename "$file")
	extension="${filename##*.}"
	filename="${filename%.*}"

	# Set the output filename with '-small' appended
	output="${filename}-small.${extension}"

	# Use ImageMagick to resize the image
	convert "$file" -resize 40x "$output"
done
