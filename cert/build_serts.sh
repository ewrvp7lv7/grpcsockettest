#!/bin/sh

openssl req -new -newkey rsa:4096 -x509 -sha256 -days 30 -nodes -out 1client.crt -keyout 1client.key  -subj "/C=/ST=/L=/O=/CN=first.client.name/emailAddress=/"

