FROM ubuntu:trusty-20150427

COPY build_scripts/install_base /build_scripts/install_base
RUN /build_scripts/install_base

ENV TMUX_VERSION 2.1
COPY build_scripts/install_tmux /build_scripts/install_tmux
RUN /build_scripts/install_tmux

ENV GIT_LFS_VERSION 1.0.2
COPY build_scripts/install_gitlfs /build_scripts/install_gitlfs
RUN /build_scripts/install_gitlfs

RUN locale-gen en_US.UTF-8

COPY build_scripts/setup_user /build_scripts/setup_user
RUN /build_scripts/setup_user

ADD vim /home/dev/.vim

RUN ln -s /home/dev/.vim/vimrc /home/dev/.vimrc
COPY tmux.conf /home/dev/.tmux.conf

RUN chown -R dev.dev /home/dev

VOLUME /home/dev/work
WORKDIR /home/dev/work

COPY build_scripts/run /build_scripts/run
CMD ["/build_scripts/run"]

USER dev
