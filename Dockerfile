FROM alpine:latest

COPY ./bin/grpcwebproxy .
COPY ./run.sh .

ENV ADDRESS=localhost
ENV PORT=50051
ENV TLS=false
ENV ARGS=""
ENV ORIGIN=all

ENTRYPOINT ./run.sh
