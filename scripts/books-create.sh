#!/bin/sh

TOKEN="yB4wGpPOYuM25SJw4/uysoxhGv4IU0PI6u1+l8KrWW4=--gt7SSDhs+aVXhBOhn5GwtxBpLUlzTsqKdHlLYDjbAiw="

# temp book created for testing:
curl --include --request POST http://localhost:3000/books \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Try Again",
      "author": "Lets see",
      "price": 12.99
    }
  }'

  curl --include --request POST http://localhost:3000/books \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \
    --data '{
      "book": {
        "title": "Here We Go",
        "author": "Once More",
        "price": 10.99
      }
    }'
