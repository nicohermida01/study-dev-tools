#!/bin/bash

# MOVE THIS SCRIPT TO STUDY ROOT FOLDER !!!

cd study-app-front
  docker compose down
cd ..

cd study-app-api
  docker compose down
cd ..

cd study-dev-tools
  cd database
    docker compose down
  cd ..

  cd reverse-proxy
    docker compose down
  cd ..
cd ..

echo "ALL CONTAINERS DOWN"