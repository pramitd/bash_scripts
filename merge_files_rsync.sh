#!/bin/bash

# This script uses rsync to merge files from two folders into seperate folder
# File Structure

# SOURCE:
# /Desktop/folder_trainval01_blobs/samples/CAM_BACK/<files>
#         |-----------------------/samples/CAM_FRONT/<files>
# /Desktop/folder_trainval02_blobs/samples/CAM_BACK/<files>
#         |-----------------------/samples/CAM_FRONT/<files>

# DESTINATION
# /Desktop/samples/CAM_BACK/<merged files from both trainval01_blobs/CAM_BACK and trainval02_blobs/CAM_BACK>
# /Desktop/samples/CAM_FRONT/<merged files from both trainval01_blobs/CAM_FRONT and trainval02_blobs/CAM_FRONT>



declare -a folders=(trainval01_blobs trainval02_blobs)

declare -a cams=(CAM_BACK CAM_FRONT )

for folder in "${folders[@]}" ; do
        for cam in "${cams[@]}" ; do
                echo "FOLDER: $folder | CAM: $cam"
                rsync -a /Desktop/v1.0-$folder/samples/$cam/ \
                       /Desktop/samples/$cam/
        done
done
