FROM golang:1.22.5 as builder
WORKDIR /app
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build -v -o echo-server .

FROM alpine:3.14
COPY --from=builder /app/echo-server /usr/local/bin/echo-server
EXPOSE 8080
ENV PORT 8080
ENTRYPOINT ["echo-server"]
