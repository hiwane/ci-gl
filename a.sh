#!/bin/bash

curl --request POST http://localhost:10080/oauth/token
curl --request POST --data '{"grant_type": "password", "username": "root", "password": "5iveL!fe"}' http://localhost:10080/oauth/token
exit $?
