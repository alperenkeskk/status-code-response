#!/bin/bash
while read HTTP; do
  curl -o /dev/null --silent -I --write-out '%{http_code}' "$HTTP"
  echo " ----> "" $HTTP "
done < file.txt > output.txt
  echo "========================================================================"
grep 200 output.txt && grep 302 output.txt && grep 301 output.txt
  echo "========================================================================"

