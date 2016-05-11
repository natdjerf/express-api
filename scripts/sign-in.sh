#!/bin/sh

# temp user created for testing:
curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "abc@abc.com",
      "password": "abc"
    }
  }'

#token:
# SAvn+Y9NsxWSRH1vPz61dJlt0sP+OFt4fM5MR28Z/Bk=--6rnpUHpMrf138TjsjX+zQA8eOSMdTO5Naj8ffVturO0=


# curl --include --request POST http://localhost:3000/sign-in \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "an@example.email",
#       "password": "an example password"
#     }
#   }'
