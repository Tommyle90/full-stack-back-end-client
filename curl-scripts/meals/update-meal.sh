curl "http://localhost:4741/meals/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "meal": {
      "mealtype": "'"${MEAL}"'",
      "date": "'"${DATE}"'",
      "description": "'"${TEXT}"'"
    }
  }'
