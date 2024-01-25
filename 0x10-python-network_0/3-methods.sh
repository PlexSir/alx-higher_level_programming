#!/bin/bash

# Check if the URL is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Set the URL
url=$1

# Use curl to get the HTTP methods
methods=$(curl -I -X OPTIONS $url | grep "Allow:" | awk '{print $2}')

# Display the HTTP methods
echo "Allowed HTTP methods:"
echo $methods