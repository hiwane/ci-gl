#!/bin/bash

for port in 80 10080 8080
do
  curl --trace-ascii dump.txt http://localhost:${port}/
  cat dump.txt
  curl --request POST http://localhost:10080/oauth/token
  curl --request POST --data '{"grant_type": "password", "username": "root", "password": "5iveL!fe"}' http://localhost:${port}/oauth/token
done
exit $?
