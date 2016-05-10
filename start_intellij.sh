GOPATH=${HOME}/golang/1.5/
PREF_DIR=${HOME}/.IdeaIC15_docker

docker rm -f intellij-docker
docker run -tdi \
  	   --privileged \
           -e DISPLAY=${DISPLAY} \
  	   -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v ${PREF_DIR}:/root/.IdeaIC15 \
 	   -v ${GOPATH}:/root/go \
	   -v /sys/:/sys/ \
	   --name intellij-docker \
           --net host \
	   bplotka/docker-dev-intellij

