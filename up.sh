#!/bin/bash

cd database
  docker compose up -d
cd ..

cd reverse-proxy
  docker compose up -d
cd ..

# wait for mongo to be ok
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:27017)" != "200" ]]; do sleep 5; done

cd database
  chmod 777 ./populate-db.sh
  docker exec study-db /scripts/populate-db.sh
  sleep 5
cd ..

echo "DEV TOOLS READY"