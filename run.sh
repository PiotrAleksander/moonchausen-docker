(
    trap 'kill 0' INT
    (docker-compose up) &
    (ipfs daemon) &
    (cd indexer && cargo watch -x run) &
    wait
)
