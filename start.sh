#!/bin/bash

# MOVE THIS SCRIPT TO STUDY ROOT FOLDER !!!

docker network create study_network

cd study-dev-tools
  chmod +x ./up.sh
  ./up.sh
cd ..

cd study-app-api
  docker compose up -d
cd ..

cd study-app-front
  docker compose up -d
cd ..

echo "ALL CONTAINERS UP!"

