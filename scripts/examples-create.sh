#!/bin/sh

TOKEN="SAvn+Y9NsxWSRH1vPz61dJlt0sP+OFt4fM5MR28Z/Bk=--6rnpUHpMrf138TjsjX+zQA8eOSMdTO5Naj8ffVturO0="

# temp example created for testing:
curl --include --request POST http://localhost:3000/examples \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "example": {
      "text": "this is text"
    }
  }'



# curl --include --request POST http://localhost:3000/examples \
#   --header "Authorization: Token token=$TOKEN" \
#   --header "Content-Type: application/json" \
#   --data '{
#     "text"
#     }
#   }'


# on command line, type TOKEN=<token> to use example without hardcoding
