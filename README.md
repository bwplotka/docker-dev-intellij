# docker-dev-intellij
Docker image for IntelliJ IDEA Community + GO with GO building/development/testing environment.

It is based on [dlsniper/docker-intellij](https://github.com/dlsniper/docker-intellij) docker.

For Golang development and testing purposes we need some improvements of the base image like:
* Useful packages (e.g `vim`, `make`)
* Root (we _really_ need `sudo`.. and it is container so it is really hard to broke host (: )
* Useful start script.
