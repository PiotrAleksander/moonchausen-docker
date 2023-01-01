(
    trap 'kill 0' SIGINT
    (cd frontend && yarn dev) &
    (cd cms && docker-compose up) &
    (cd indexer && cargo run) &
    wait
)
