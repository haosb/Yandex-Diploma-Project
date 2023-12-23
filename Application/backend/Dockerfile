FROM golang:alpine AS builder

WORKDIR /build

COPY go.* ./
RUN go mod download

COPY . ./

# Build the binary.
RUN go build -o server ./cmd/api

FROM debian

COPY --from=builder /build/server /build/server

# Run the web service on container startup.
CMD ["/build/server"]