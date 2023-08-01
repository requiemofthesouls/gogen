FROM golang:1.20

WORKDIR /app

RUN apt-get update
RUN apt install -y protobuf-compiler

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.25.0

RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1.0
