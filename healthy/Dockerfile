FROM alpine:3.20
RUN apk add --no-cache curl
COPY app.sh /app.sh
RUN chmod +x /app.sh
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD test -f /tmp/healthy || exit 1
CMD ["/app.sh"]