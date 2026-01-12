#!/bin/bash

URL="http://0.0.0.0:8080/predict/"

DATA='{
  "sepal_length": 5.1,
  "sepal_width": 3.5,
  "petal_length": 3.4,
  "petal_width": 2.2
}'

curl -X POST \
  -H "accept: application/json" \
  -H "Content-Type: application/json" \
  -d "$DATA" \
  "$URL"








