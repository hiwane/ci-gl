#!/bin/bash

for port in 80 10080 8080
do
  URL=http://localhost:${port}
  curl --trace-ascii dump.txt ${URL}
  cat dump.txt
  curl --request POST ${URL}/oauth/token
  curl --request POST --data '{"grant_type": "password", "username": "root", "password": "5iveL!fe"}' ${URL}/oauth/token
done
exit $?
