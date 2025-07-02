#!/bin/bash

read -p "Enter a String: " str

rev_str=$(echo "$str" | rev)

if [ "$str" = "$rev_str" ]; then
    echo "Palindrome"
else
    echo "Not a Palindrome"
fi 

