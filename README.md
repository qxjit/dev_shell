Dockerize Dev Shell
===================

Quick start on OSX:
   
    eval $(docker-machine env dev)
    docker run \
      -it \
      -e DOCKER_HOST=$DOCKER_HOST \
      -e DOCKER_TLS_VERIFY=$DOCKER_TLS_VERIFY \
      -e DOCKER_CERT_PATH=$DOCKER_CERT_PATH \
      --volume $HOME:$HOME \
      --volume $HOME/.git:/home/dev/.git \
      --workdir $HOME/work \  # or wherever you do your work (must be inside $PWD)
      --name dev_shell \
      qxjit/dev_shell

