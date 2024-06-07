FROM golang:1.21-alpine
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000
RUN adduser -D appuser
USER appuser
WORKDIR /usr/src/app
COPY . .
RUN go build
RUN go test ./...
CMD ["./server"]
