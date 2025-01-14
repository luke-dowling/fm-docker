# Dockerfiles

Create a container, an abstract place to run your process

Container should be disposable. Cattle not pet.

## Build

"docker build . --tag my-app" or -t

- if you dont run without --tag you will get a random hash which is hard to work with
- add :1 or :2 for versioning of docker

## Run

"docker run --init [name]"

- will allow you to exit app with cnt + c

## Open out to port

Normally docker doesnt publish its ports as it wants to keep everything private/secure

We can override this with the --publish or -p flag when trying to run a container

The first one represents the host machine & the second is the container (docker)

"docker run --init --publish 3000:3000 --rm --name na my-node-app:3"
