if [ "$ORIGIN" = "all" ]
then export ORIGIN_ARGS="--allow_all_origins"
else export ORIGIN_ARGS="--allowed_origins=$ORIGIN"
fi

./grpcwebproxy --backend_addr=$ADDRESS:$PORT --run_tls_server=$TLS $ORIGIN_ARGS $ARGS