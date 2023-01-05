(
    trap 'kill 0' SIGINT
    (docker-compose up) &
    (cd indexer && cargo run) &
    wait
)
