#!/bin/bash

curl "http://localhost:4741/grocery_lists" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "grocery_list": {
      "checkbox": "'"${CHECKBOX}"'",
      "item": "'"${ITEM}"'",
      "amount": "'"${AMOUNT}"'"
    }
  }'

echo
