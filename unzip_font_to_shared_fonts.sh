#!/bin/bash

#this script takes a zip file of fonts and unzips them to /usr/share/fonts
#inside a dir with the same name as the zip file

#set the zip file
zip_file=$1

#set the directory to unzip to
unzip_dir=/usr/share/fonts/"${zip_file%.zip}"

#unzip the file
sudo unzip -o "$zip_file" -d "$unzip_dir"

done
