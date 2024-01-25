#!/bin/bash

# Check if URL argument is provided
if [[ -z "$1" ]]; then
  echo "Usage: ./script_name.sh <URL>"
  exit 1
fi

# Send request to the URL and store the response body in a variable
response=$(curl -sI "$1" | grep -i Content-Length | awk '{print $2}')

# Display the size of the response body in bytes
echo "Size of the response body: $response bytes"