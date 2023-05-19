#!/bin/bash

for file in *.sh; do
    # Skip the current script itself
    if [ "$file" != "main.sh" ]; then
        echo "Running $file"
        chmod +x "$file"
        bash "$file"
    fi
done
echo "Done"
