#!/bin/bash
folder="watched_folder"
for f in "$folder"/*; do
  [ -f "$f" ] && mv "$f" "$f.enc"
  sleep 0.2
done
echo "Ransomeware Detected!"
