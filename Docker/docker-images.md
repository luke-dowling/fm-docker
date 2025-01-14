# Docker Images

These pre-made containers are called images. They basically dump out the state of the container, package that up, and store it so you can use it later.

## Commands

`docker run --interactive --tty alpine`

- if you say alpine like this it will grab alpine:latest
- the short very for interactive and tty is "-it", this does the same thing in short hand for both those commands

## CLI

pull

- pull pulls the docker container into your cash, then it is just there
- once its pulled you can run it

## remove

- first "docker kill [name]" will stop the process
- "docker rm [name]" will remove it from your history list
- "docker rmi [name]" will remove the image and clear the cache

## searh

docker search -> that will search for container on docker hub
