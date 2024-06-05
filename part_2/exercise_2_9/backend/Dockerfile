FROM circleci/golang:1.16-stretch-node-browsers-legacy
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost
WORKDIR /usr/src/app
COPY . .
RUN go build
RUN go test ./...
CMD ["./server"]
