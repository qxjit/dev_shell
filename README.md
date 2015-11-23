Dockerize Dev Shell
===================

## OSX Quick start
   
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

### Faster FS access

The virtualbox share can be very slow, especially for things like Ag. You will
probably want this:

[https://quip.com/EDYLAAfuup5M](https://quip.com/EDYLAAfuup5M)

## Linux QuickStart

    docker run \
      -it \
      --volume $HOME/.ssh:/home/dev/.ssh \
      --volume $HOME:$HOME \
      --volume /var/run/docker.sock:/var/run/docker.sock \
      --workdir $HOME/work \
      -e GIT_NAME="Your name for git commits" \
      -e GIT_EMAIL="Your email for git commits" \
      --name dev_shell \
      --privileged \
      qxjit/dev_shell


