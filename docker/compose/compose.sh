#!/bin/bash

PLATFORM="$(uname -m)"

echo "Platform $PLATFORM detected"

if [[ $PLATFORM == "aarch64" ]]; then
    docker compose -f docker-compose-aarch64.yml up -d
else
    docker compose -f docker-compose.yml up -d
fi

docker exec -it as2_container /bin/bash