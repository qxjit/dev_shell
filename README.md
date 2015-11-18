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
      --volume $HOME/.ssh:/home/dev/.ssh \
      --workdir $HOME/work \  # or wherever you do your work (must be inside $PWD)
      --name dev_shell \
      qxjit/dev_shell

## Faster FS access

The virtualbox share can be very close, especially for things like Ag. You will
probably want this:

[https://quip.com/EDYLAAfuup5M](https://quip.com/EDYLAAfuup5M)

