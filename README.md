Dockerize Dev Shell
===================

Quick start on OSX:
   
    eval $(docker-machine env dev)
    docker run \
      -it \
      -e DOCKER_HOST=$DOCKER_HOST \
      -e DOCKER_TLS_VERIFY=$DOCKER_TLS_VERIFY \
      -e DOCKER_CERT_PATH=$DOCKER_CERT_PATH \
      -e GIT_NAME="Your name for git commits" \
      -e GIT_EMAIL="Your email for git commits" \
      --volume $HOME:$HOME \
      --volume $HOME/.ssh:/home/dev/.ssh \
      --workdir $HOME/work \  # or wherever you do your work (must be inside $HOME)
      --name dev_shell \
      qxjit/dev_shell

## Faster FS access

The virtualbox share can be very slow, especially for things like Ag. You will
probably want this:

[https://quip.com/EDYLAAfuup5M](https://quip.com/EDYLAAfuup5M)

