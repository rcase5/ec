#!/usr/bin/bash
wget --quiet $1
filenamez=$(basename $1)
gunzip $filenamez
filename=${filenamez/.gz/}
grep -c "error" $filename 
