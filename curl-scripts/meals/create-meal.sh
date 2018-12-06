#!/bin/bash

curl "http://localhost:4741/meals" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "meal": {
      "user_id": "'"${U_ID}"'",
      "mealtype": "'"${MEAL}"'",
      "date": "'"${DATE}"'",
      "description": "'"${TEXT}"'"
    }
  }'

echo
