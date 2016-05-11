#!/bin/sh

ID="573367bc08ac77b8d2868489"

curl --include --request GET http://localhost:3000/books/$ID \
  --header "Content-Type: application/json"
