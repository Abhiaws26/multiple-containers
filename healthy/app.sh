#!/bin/sh

echo "Starting application..."

nginx

# Simulate app not becoming ready
echo "App failed to become ready"

# ❌ No touch /tmp/ready

tail -f /dev/null
