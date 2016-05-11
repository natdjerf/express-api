#!/bin/sh
# curl --include --request GET http://localhost:3000/books/ \
#   --header "Content-Type: application/json"

# json lint:
curl --request GET http://localhost:3000/books/ \
  --header "Content-Type: application/json"
