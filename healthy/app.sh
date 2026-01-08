#!/bin/sh

echo "Starting application..."

# Start nginx in background
nginx

# Wait until nginx is actually serving traffic
until curl -sf http://localhost >/dev/null; do
  echo "Waiting for nginx to be ready..."
  sleep 2
done

# Mark application as healthy
echo "App is ready"
touch /tmp/ready

# Keep container running
tail -f /dev/null
