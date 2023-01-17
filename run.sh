(
    trap 'kill 0' INT
    (docker-compose up --build --force-recreate) &
    (ipfs daemon) &
    (cd indexer && cargo watch -x run) &
    wait
)
