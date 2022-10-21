# Docker and Ruby on Rails 7.

These are the files you need in order to launch a Ruby on Rails 7 App with Docker.
You can launch just the service app or with the other two services.

## Steps.

1. Create and copy the code inside of Dockerfile-Getting-Started.dockerfile
2. Install VS Code extensions to launch your Docker container.
3. Type ctrl + shift + p and rebuild the container without cache.
4. Once is finished, create your Ruby on Rails App.
5. Close the container and open the new Rails App with VS code.
6. Create the Dockerfile and the entrypoint.sh in the root and rebuild the Docker container.
7. Enjoy.

## More information.

If you want to create a PostgreSQL and Redis containers, you should copy the docker-compose.yml file, and execute the next command:

```
docker compose up --build
```

And then, you have to configure your Rails App in order to connect to the PostgreSQL container.

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: password
  pool: 5
```
