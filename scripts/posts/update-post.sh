#!/bin/bash

curl --include --request PATCH "http://localhost:4741/posts/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
      "post": {
        "word": "'"${WORD}"'",
        "picture": "'"${PICTURE}"'",
        "link": "'"${LINK}"'"
      }
  }'
