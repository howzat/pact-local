Local PACT Broker 
=
This starts a working pact broker instance that allows local testing


Running
=

 Starting Postgres and Pact (running in Docker)
 -
 The directory currently named pact-docker holds a Docker compose file that starts the requisite Postgres and Pact Broker containers.
 
`./start_docker.sh`

The pact broker is started on the default `http://localhost:80`
 
*Postgres Queries using Pygmy CLI*

The script will print all the running containers once they are started. The nicest way to examine the Postgres DB (should you need to) is to use `pygmy`. 

For example: 
```
CONTAINER ID        IMAGE               ...    PORTS                         NAMES
ab516ce4d804        dius/pact-broker    ...    0.0.0.0:80->80/tcp, 443/tcp   pact-broker
9e025dab6377        pact-postgres       ...    5432/tcp                      pact-postgres

docker run -it --rm --link pact-postgres:postgres pygmy/pgcli
```
