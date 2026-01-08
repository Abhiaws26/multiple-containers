FROM nginx:alpine

# Install curl (needed for healthcheck)
RUN apk add --no-cache curl

# Copy app script
COPY app.sh /app.sh

# Make script executable
RUN chmod +x /app.sh

# Healthcheck
HEALTHCHECK --interval=10s --timeout=3s --retries=3 \
  CMD test -f /tmp/ready || exit 1

# Start app
CMD ["/app.sh"]
