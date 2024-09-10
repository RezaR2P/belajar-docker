FROM golang:1.18-alpine
ARG app=main
RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go
ENV app=${app}
EXPOSE 8080
CMD go run app/${app}.go