#!/bin/sh

echo "Starting application...But will not become ready . This is just a test."

nginx

# Simulate app not becoming ready
echo "App failed to become ready"

# ❌ No touch /tmp/ready

tail -f /dev/null
