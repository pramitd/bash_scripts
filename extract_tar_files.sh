#!/bin/bash

# Create a List of files to be extracted each file has an extension of *.tgz

declare -a files=(trainval01_blobs trainval02_blobs trainval03_blobs trainval04_blobs trainval05_blobs trainval06_blobs trainval07_blobs)

# Create Individual Folders on the desktop to extract each of the above files
# v1.0- is a prefix to each of the folder names  

for file in "$files[@]}"; do
	mkdir /User/pramit/Desktop/v1.0-$file #Replace the path as per requirement (use pwd in terminal to find the path of your files)
done

# Extract Files That are present in /User/pramit/Desktop/tgz_files
# to the individual folders present in /User/pramit/Desktop/<folder_name>/ as created using the above for loop
# Verbose is not used during extraction

echo "Extracting Files"
for file in "$files[@]}"; do
	echo "Extracting File: $file"
	tar -xf /User/Desktop/pramit/tgz_files/$file.tgz -C \
		/User/Desktop/pramit/v1.0-$file/
done
	

