 – Linux Command Reference

#  Linux Command Reference Guide

This guide provides commonly used command-line tools in Linux with full syntax, options, and practical examples. Useful for DevOps engineers, system admins, and shell scripting learners.

---

## 1. 🔍 `grep` — Search text using patterns

**Syntax:**
```
grep [OPTIONS] PATTERN [FILE...]
Options:

Option	Description
-i	Ignore case
-r	Recursive search
-n	Show line numbers
-v	Invert match
-c	Count the number of matching lines
-l	Show only filenames with matches
-e	Match using multiple patterns

Examples:

grep "error" logfile.txt
grep -i "error" logfile.txt
grep -n "error" logfile.txt
grep -v "success" logfile.txt
grep -r "password" /etc
grep -e "fail" -e "error" logfile.txt

2.  sed — Stream editor for filtering and replacing text
Syntax:

t
sed [OPTIONS] 'script' [FILE...]
Options:

Option	Description
-n	Suppress automatic output
-e	Execute multiple commands
-i	Edit file in-place

Examples:


sed 's/foo/bar/' file.txt
sed 's/foo/bar/g' file.txt
sed -i 's/localhost/127.0.0.1/g' config.txt
sed -n '5,10p' file.txt
3. 🔎 find — Locate files and directories
Syntax:

find [PATH] [OPTIONS] [ACTIONS]
Options:

Option	Description
-name	Match by file name
-iname	Case-insensitive file name match
-type	Type: f for file, d for directory
-mtime +N	Modified more than N days ago
-size	Match file size
-exec	Execute command on matched files

Examples:

find /etc -name "*.conf"
find . -type f -size +10M
find /var/log -mtime +7 -name "*.log"
find . -type f -exec chmod 644 {} \;
4. 📄 head — Output the beginning of a file
Syntax:


head [OPTIONS] [FILE...]
Options:

Option	Description
-n N	Show first N lines
-c N	Show first N bytes

Examples:


head file.txt
head -n 20 file.txt
head -c 100 file.txt
5. 📄 tail — Output the end of a file
Syntax:


tail [OPTIONS] [FILE...]
Options:

Option	Description
-n N	Show last N lines
-c N	Show last N bytes
-f	Follow file changes (e.g., logs)

Examples:


tail file.txt
tail -n 50 file.txt
tail -f /var/log/syslog
6. 🐱 cat — Concatenate and view file content
Syntax:


cat [OPTIONS] [FILE...]
Options:

Option	Description
-n	Number all output lines
-b	Number non-empty lines only
-A	Show tabs and end-of-line characters

Examples:

cat file.txt
cat file1 file2 > merged.txt
cat -n script.sh
cat -b script.sh
