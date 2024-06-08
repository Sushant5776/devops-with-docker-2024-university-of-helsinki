FROM golang:1.21-alpine AS build
ENV REQUEST_ORIGIN=http://localhost:5000
WORKDIR /usr/src/app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o server && \
  go test ./...

FROM scratch
COPY --from=build /usr/src/app/server .
EXPOSE 8080
CMD ["./server"]