
FROM busybox

EXPOSE 8080

CMD while true; do \
  echo -e "HTTP/1.1 200 OK\n\nAPI WORKING" | nc -l -p 8080; \
done

