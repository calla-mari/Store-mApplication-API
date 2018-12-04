#!/bin/bash

curl --include --request DELETE "http://localhost:4741/grocery_lists/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
