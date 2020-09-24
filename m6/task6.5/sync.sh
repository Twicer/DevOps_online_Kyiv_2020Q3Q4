#!/bin/bash
rsync -avh $1 $2 --log-file=log.txt
