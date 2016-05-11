#!/bin/sh
ID="57334b0285b2697ec52fc3c8"

curl --include --request GET http://localhost:3000/examples/$ID \
  --header "Content-Type: application/json" \
