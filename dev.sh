#!/bin/bash

docker-compose up -d database
docker-compose run wait -c database:5432
docker-compose up -d backend
docker-compose run wait -c backend:8000
docker-compose up