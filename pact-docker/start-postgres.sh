#!/usr/bin/env bash

. docker-common.sh
. ./build-pact-postgres-image.sh

running=`docker ps -a -f name="$POSTGRES_CONTAINER_NAME" -q`

if [ -z "$running" ]; then

    echo "Running docker container [$POSTGRES_CONTAINER_NAME]"

    docker run --name $POSTGRES_IMAGE_NAME \
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
    -e POSTGRES_USER=$POSTGRES_USER \
    -e PGDATA=$PGDATA \
    -v $PGDATA:/var/lib/postgresql/data \
    -d $POSTGRES_CONTAINER_NAME;

    sleep 1
    echo " done!"
fi
