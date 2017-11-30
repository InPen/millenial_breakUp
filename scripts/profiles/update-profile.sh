#!/bin/bash

curl --include --request PATCH "http://localhost:4741/profiles/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
      "profile": {
        "quote": "'"${QUOTE}"'",
        "handle": "'"${HANDLE}"'"
      }
  }'
