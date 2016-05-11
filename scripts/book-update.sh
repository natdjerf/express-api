#!/bin/sh

TOKEN="yB4wGpPOYuM25SJw4/uysoxhGv4IU0PI6u1+l8KrWW4=--gt7SSDhs+aVXhBOhn5GwtxBpLUlzTsqKdHlLYDjbAiw="
ID="5733714e92951d7ad6a0d64b"

curl --include --request PATCH http://localhost:3000/books/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Bernstein Bears",
      "author": "Roberto Del Valle"
    }
  }'
