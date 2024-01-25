#!/bin/bash

# Check if the URL is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Send a DELETE request to the URL and store the response in a variable
response=$(curl -X DELETE "$1")

# Display the body of the response
echo "$response"