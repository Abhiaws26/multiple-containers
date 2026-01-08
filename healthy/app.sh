#!/bin/sh

echo "Starting application..."
sleep 10   # simulate slow startup

echo "OK" > /tmp/ready

while true; do
  if [ -f /tmp/fail ]; then
    echo "Application failure detected"
    rm -f /tmp/ready
  fi
  sleep 2
done
