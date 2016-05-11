#!/bin/sh

# temp user created for testing:
curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "abc@abc.com",
      "password": "abc",
      "password_confirmation": "abc"
    }
  }'



# curl --include --request POST http://localhost:3000/sign-up \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "another@example.email",
#       "password": "an example password",
#       "password_confirmation": "an example password"
#     }
#   }'
