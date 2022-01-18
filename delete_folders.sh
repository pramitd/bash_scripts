#!/bin/bash

# Delete a folder called sweeps that is present in a number of sub-folders in the desktop recurssively using bash for loop

# Declare a list with the names of the subfolders: 

declare -a folders=(trainval01_blobs trainval02_blobs trainval03_blobs trainval04_blobs trainval05_blobs trainval06_blobs trainval07_blobs)

#Use for loop to delete the folders

for folder in "${folders[@]}"; do
        rm -rf /Users/Desktop/subfolder_$folder/sweeps
done
