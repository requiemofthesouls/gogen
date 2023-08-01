FROM golang:1.20

WORKDIR /app

RUN apt-get update
RUN apt install -y protobuf-compiler

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
RUN go install github.com/requiemofthesouls/protoc-gen-go-rmq@latest
