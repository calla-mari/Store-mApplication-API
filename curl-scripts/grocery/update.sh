#!/bin/bash

curl "http://localhost:4741/grocery_lists" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "grocery_list": {
      "checkbox": "'"${CHECKBOX}"'",
      "item": "'"${ITEM}"'",
      "amount": "'"${AMOUNT}"'"
    }
  }'

echo
