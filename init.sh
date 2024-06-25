#!/bin/sh

SOURCE_DIR="/etc/nginx/sites-available"
TARGET_DIR="/etc/nginx/sites-enabled"

for file in "$SOURCE_DIR"/*;
do
    filename=$(basename "$file")
    echo "Linking '$SOURCE_DIR/$filename' to '$TARGET_DIR/$filename'"
    ln -sf "$SOURCE_DIR/$filename" "$TARGET_DIR/$filename"
done

