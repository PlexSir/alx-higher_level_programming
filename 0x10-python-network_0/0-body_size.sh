#!/bin/bash

# Check if the URL was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Send the request using curl and save the response body to a variable
response=$(curl -s -D - "$1" | grep -E '^Content-Length: [0-9]+')

# Extract the content length (response size in bytes) from the response header
content_length=$(echo "$response" | awk '{print $2}')

# Display the content length
if [ -n "$content_length" ]; then
  echo "Response size in bytes: $content_length"
else
  echo "Failed to retrieve the response size."
  exit 1
fi