#!/bin/bash

# Count total number of HEIC files
total=$(ls *.HEIC 2>/dev/null | wc -l)

if [ "$total" -eq 0 ]; then
  echo "No HEIC files found."
  exit 1
fi

# Process each file and pipe through pv for progress
ls *.HEIC | pv -l -s "$total" | while read -r file; do
  npx heic-cli "$file" > "${file%.HEIC}.jpg"
done