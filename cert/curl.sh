#!/bin/sh

curl -v --location --request POST 'https://97aedf17-7097-4308-a267-1e233b6d36fd.mock.pstmn.io/ione/Test' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic b25lYWRtaW46MjI0NGE2YTllNzI2NDMxNWZlN2Q2OWE4YWRjNzc5M2QzOGU3NDE3MmQ3ZWNmOWFmOTY5YTc3YmQ4Y2QyNWI2Zg==' \
--data-raw '{
 "params":[
  "PING"
 ]
}'

echo "Press enter to continue";
read name;