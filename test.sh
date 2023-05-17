#!/bin/bash

# curl -X POST -H "Content-Type: application/json" -d "@mock.json" http://localhost/setup/imposters
curl -X GET http://localhost/api/swagger
curl -X GET http://localhost/setup/imposters
curl -X GET http://localhost/stub/api/feature1