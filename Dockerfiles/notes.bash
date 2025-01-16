docker run # run a new container
docker exec # run a command in an existing container

docker search # search for an image from docker hub
docker pull # pull an image from docker hub

docker build {path} # build an image from a Dockerfile in a specific path, most likely . or ./path

# the built docker file does not come named, so you have to tag it
docker build --tag {name} {path} # build an image and give it a name from a Dockerfile in a specific path

docker run --publish {port}:{port} {name} # run a container from an image and publish a port, this will run the container in the foreground on a specific port