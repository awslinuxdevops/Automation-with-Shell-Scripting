# Single Line Commands in Linux

wc -lwm filename.txt

wc -lwm file.txt file2.txt 

find /path/to/dir -type f -size 0 -delete


find /var/log -type f -mtime +7 -exec rm -rf {} \;
find /var/log -type f -mtime +7 -delete
find /var/log -type f -mtime +7 -exec rm -rf {} \; -