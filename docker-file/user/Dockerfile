FROm golang:1.18-alpine
RUN mkdir /app
RUN addgroup -S ezagroup && adduser -S -D -h /app ezauser ezagroup
RUN chown -R ezauser:ezagroup /app
USER ezauser
COPY main.go /app
EXPOSE 8080
CMD go run /app/main.go