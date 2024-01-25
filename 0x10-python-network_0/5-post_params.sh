#!/bin/bash

# Define the URL to send the POST request to
url="https://example.com/submit_form"

# Define the email and subject to send in the POST request
email="test@gmail.com"
subject="I will always be here for PLD"

# Construct the POST request body
post_data="email=$email&subject=$subject"

# Send the POST request using curl and store the response in a variable
response=$(curl -X POST -d "$post_data" $url)

# Display the body of the response
echo "$response