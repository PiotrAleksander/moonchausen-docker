(
    trap 'kill 0' INT
    (docker-compose up --build --force-recreate) &
    (ipfs daemon)
    wait
)
