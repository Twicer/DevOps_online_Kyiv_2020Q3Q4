#!/bin/bash
file_out=out_script5
awk '{print $4}' $1 | cut -c 2-18 | sort | uniq -c | sort -gr > $file_out
{
read line1
} < $file_out
echo Site has been most requested : 
echo $line1