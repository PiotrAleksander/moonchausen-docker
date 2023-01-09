(
    trap 'kill 0' SIGINT
    (docker-compose up) &
    (ipfs daemon) &
    (cd indexer && cargo watch -x run) &
    wait
)
