FROM alpine:3.19

RUN apk add --no-cache netcat-openbsd curl

COPY app.sh /app.sh
RUN chmod +x /app.sh

HEALTHCHECK --interval=10s --timeout=5s \
  CMD curl -f http://localhost:8080 || exit 1

EXPOSE 8080

ENTRYPOINT ["/app.sh"]
CMD ["v1"]
