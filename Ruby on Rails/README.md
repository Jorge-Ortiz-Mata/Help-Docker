# Docker and Ruby on Rails.

![](../images/rails.png)

## Sumarize.

This folder contains information of how to create docker containers for Ruby on Rails apps.
It also has a docker-compose.yaml file where several services are launched using just one file.

## Other services.

PostgreSQL and Redis are other services that can be used with Ruby on Rails apps.
You can find dockerfiles and docker-compose.yaml files with the basic configuration.

## Configuration.

You have to create the Dockerfile Getting Started first, and build a docker container. After that, generate
your Rails App and create the second dockerfile in the root of your new rails app created.
Don't forget to add the entrypoint.sh and its configuration.
