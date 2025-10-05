#!/usr/bin/env bash
# x0 - upload files to https://x0.at/ with: x0 file.png [otherfile.jpg ...]
set -euo pipefail

if [ "$#" -eq 0 ]; then
  echo "Usage: x0 <file1> [file2 ...]" >&2
  exit 2
fi

for path in "$@"; do
  if [ ! -e "$path" ]; then
    echo "Error: file not found: $path" >&2
    continue
  fi

  # Use curl in silent mode but show errors; print the response (x0 returns the URL)
  if url=$(curl --fail --silent --show-error -F "file=@${path}" https://x0.at/ 2>/dev/null); then
    echo "${path} -> ${url}"
  else
    echo "Upload failed for: $path" >&2
  fi
done
