#!/bin/sh
VERSION=$1

echo "Starting App version: $VERSION"

while true
do
  echo "HTTP/1.1 200 OK\r\n\r\nHello from version $VERSION" | nc -l -p 8080 -q 1
done
