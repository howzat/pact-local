Local PACT Broker 
=
This starts a working pact broker instance that allows local testing


Running
=

 Starting Postgres and Pact (running in Docker)
 -
 The directory currently named pact-docker holds a Docker compose file that starts the requisite Postgres and Pact Broker containers.
 
 Alternatively the `start_docker.sh` can be run. The pact broker is started on the default `http://localhost:80`
 
```
cd pact-docker
docker-compose up
docker ps
```

*Postgres Queries using Pygmy CLI*

Docker Compose starts a new network when bringing the containers online. To link a new container you need to know the name of that network.

Running `docker network ls` will show all the networks known to Docker. You can identify which applies to this project since the folder `docker-compose` is run from will form part of the network name.

For example: 
```
NETWORK ID          NAME                          DRIVER              SCOPE
b7f1da411060        pact-docker-compose_default   bridge              local
171673d3c506        pact-docker_default           bridge              local



docker run -it --rm --link pactbroker-db:postgres pygmy/pgcli
```
