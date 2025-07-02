#!/bin/bash

read -p "Enter filename: " file

if [[ -f "$file" && -r "$file" ]]; then
    echo "File exists and is readable"
else
    echo "File doesn't exist or is not readable"
fi
