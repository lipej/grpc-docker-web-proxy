# grpc-docker-web-proxy

**NOTE**: This docker configurations use gRPC Web Proxy Pre-built binaries from https://github.com/improbable-eng/grpc-web 

## How to use

Clone this project and open it in terminal

Run:

```bash
docker build -t grpcwebproxy .
```

Now you have de docker image and can run the proxy with:

```bash
docker run -p 8080:8080 grpcwebproxy
```

if you want to run in the host network

```bash
docker run --net=host grpcwebproxy
```

By default container will use localhost and port 50051 as default grpc server target you can see more default configuration below

Avaliable envs

- ADDRESS = default to localhost
- PORT = default to 50051
- TLS = default to false
- ORIGIN = default to all, provide value need to be like: protocoll://address.domain, more then one can be provided with comma separator
- ARGS = default to "" - this env is to pass other args to the proxy server you can see all you can use [here](https://github.com/improbable-eng/grpc-web/tree/master/go/grpcwebproxy).


Example: 

```bash
docker run -p 8080:8080 -e ADDRESS=localhost -e PORT=9090 -e TLS=true -e ORIGIN="https://mydomain.com" -e ARGS="--server_tls_cert_file=../../misc/localhost.crt --server_tls_key_file=../../misc/localhost.key" grpcwebproxy
```

