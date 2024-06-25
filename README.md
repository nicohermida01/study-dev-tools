![alt text](./study_logo.png)

# Introduction

Welcome to Study documentation!
Here you will find all about how our architecture works.

# Technologies

This applications has the following main technologies:

- MongoDb
- Traefik

# Required tools and dependencies

We use **docker** and **docker compose** for read the .yaml manifiests and start up the containers.
For everything to work correctly, you will first need to clone these 3 repositories

- study-dev-tools
- study-app-front
- study-app-api

# How to start

1. Clone the repositories

...
git clone https://github.com/nicohermida01/study-dev-tools.git

git clone https://github.com/nicohermida01/study-app-api.git

git clone https://github.com/nicohermida01/study-app-front.git
...

2. Copy the env file

In study-app-api and study-app-front:
...
cp ./.env.examplo ./.env
...

3. Start up all containers

In the study-dev-tools repo you will find two scripts `start.sh` and `stop.sh`. These allow all containers to be started and stopped.
You need to move both scripts to the root folder of the project.

root-proyect/
├─── study-dev-tools/
├─── study-app-api/
├─── study-app-front/
├─── start.sh
└─── stop.sh

...
chmod +x ./start.sh
./start.sh
...
