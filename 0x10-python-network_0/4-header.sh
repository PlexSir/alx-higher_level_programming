#!/bin/bash

# Check if the URL argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Set the URL and header variable
URL=$1
HEADER="X-School-User-Id: 98"

# Send a GET request to the URL with the header variable
RESPONSE=$(curl -s -H "$HEADER" "$URL")

# Check if the request was successful
if [ $? -ne 0 ]; then
  echo "Error: Request failed"
  exit 1
fi

# Display the body of the response
echo "$RESPONSE"