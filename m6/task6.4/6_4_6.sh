#!/bin/bash
file_out=out_script6
awk '/bot/ {$2=$3=$4=$5=$6=$7=$8=$9=$10=$11=""; print $0}' $1 | sort | uniq -c | sort -gr > $file_out
echo Bots:
cat $file_out