#!/bin/bash
#

set -euo pipefail


if [ $# -eq 0 ]; then
	echo "Usage : $0 <path>"
	exit 1
fi

log_file=$1

if [ ! -f $log_file ]; then
	echo "Log file does not exists"
	exit 1
fi


totalErrors=$(grep -E 'ERROR' $log_file | wc -l)
echo "Total Errors: $totalErrors"

totalCritical=$(grep -n 'CRITICAL' $log_file | wc -l)
echo "Total Critical Issues: $totalCritical"
grep -n 'CRITICAL' $log_file

echo "Top 5 most common error messages:"
grep 'ERROR' $log_file | awk -F'] ' '{print $2}' | awk -F' - ' '{print $1}' | sort | uniq -c | sort -nr | head -5

echo "--------------Summary Report--------------"
echo "Total Errors: $totalErrors"
echo "Total Critical Issues: $totalCritical"
echo "Top 5 most common error messages:"
grep 'ERROR' $log_file | awk -F'] ' '{print $2}' | awk -F' - ' '{print $1}' | sort | uniq -c | sort -nr | head -5

# move Processed log file to archive
archive_dir="archive"
if [ ! -d "$archive_dir" ]; then
	mkdir "$archive_dir"
fi
mv "$log_file" "$archive_dir/$(basename $log_file)"
echo "Log file moved to archive directory."
