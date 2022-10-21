# Docker and Node.

These are the files you need in order to launch a Node 16 App with Docker.
You can launch just the service app or with the other two services.

## Steps.

1. Create and copy the code inside of Dockerfile-Getting-Started.dockerfile
2. Install VS Code extensions to launch your Docker container.
3. Type ctrl + shift + p and rebuild the container without cache.
4. Once is finished, create your Node App.
5. Close the container and open the new Node App with VS code.
6. Enjoy.

## More information.

If you want to create a Mongo, you should copy the docker-compose.yml file, and execute the next command:

```
docker compose up --build
```

You have to add the local port in your index.js file to connect to MongoDB as you normal do.
The MongoDB port is been exported so, you don't need to do something special configuration.
