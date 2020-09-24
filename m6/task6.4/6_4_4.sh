#!/bin/bash
file_out=out_script4
awk '/302/ {print $7;getline;print $7;}' $1 | awk '! /404/' > $file_out
echo Non-existent pages :
cat $file_out