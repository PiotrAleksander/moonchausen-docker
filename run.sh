(
    trap 'kill 0' INT
    (docker-compose up) &
    wait
)
