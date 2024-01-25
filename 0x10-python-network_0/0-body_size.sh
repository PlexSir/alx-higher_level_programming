#!/bin/bash

# Check if curl is installed
if ! command -v curl &> /dev/null; then
  echo "curl is not installed. Please install curl before running this script."
  exit 1
fi

# Get the URL from the user
read -p "Enter the URL: " url

# Send a request to the URL using curl
response=$(curl -s -o /dev/null -w "%{size_download}" "$url")

# Display the size of the response body in bytes
echo "The size of the response body is: $response bytes"
