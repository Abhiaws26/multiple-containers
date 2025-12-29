FROM alpine:3.20

# Install useful networking/debug tools
RUN apk add --no-cache \
    curl \
    iputils \
    bind-tools \
    postgresql-client

# Keep container running
CMD ["sleep", "5700"]
