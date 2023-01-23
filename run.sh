(
    trap 'kill 0' INT
    (docker-compose up --build --force-recreate) &
    (ipfs daemon) &
    (cd web && yarn dev) &
    (cd indexer && cargo watch -x run) &
    wait
)
