#!/bin/bash

# Check if the URL is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Store the URL provided as an argument
url=$1

# Send a GET request to the URL and store the response body in a variable
response=$(curl -s -w "%{size_download}" -o /dev/null $url)

# Display the size of the response body in bytes
echo $response