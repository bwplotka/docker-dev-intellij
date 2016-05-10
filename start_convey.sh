GOPATH=${HOME}/golang/1.5/
PREF_DIR=${HOME}/.IdeaIC15_docker

docker exec -it intellij-docker sh -c 'cd /root/go/src/github.com/intelsdi-x/swan/pkg && goconvey -cover false -depth -1 -port 81'
  

