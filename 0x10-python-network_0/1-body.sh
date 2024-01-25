#!/bin/bash

# Check if the URL is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Send a GET request to the URL using curl
response=$(curl -s -o /dev/null -w "%{http_code}" "$1")

# Check if the status code is 200
if [ "$response" -eq "200" ]; then
  # Display the body of the response
  curl -s "$1"
else
  echo "Error: HTTP status code $response"
fi