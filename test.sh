#!/bin/bash

# Function to make a curl request and fail on error
make_request() {
    local url=$1

    if ! curl -s --fail "$url"; then
        echo "Failed to make a request to $url"
        exit 1
    fi
}

curl -X POST -H "Content-Type: application/json" -d "@mock.json" http://localhost/setup/imposters

# Make curl requests and fail on error
make_request http://localhost/api/swagger
make_request http://localhost/setup/imposters
make_request http://localhost/stub/api/feature1

exit 0
