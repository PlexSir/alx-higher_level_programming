#!/bin/bash

# Check if URL is provided as an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

URL=$1

# Send request and store the response body in a temporary file
response=$(mktemp)
curl -sSL -o "$response" "$URL"

# Get the size of the response body in bytes
size=$(wc -c < "$response")

# Display the size
echo "Size of the response body: $size bytes"

# Clean up the temporary file
rm "$response"