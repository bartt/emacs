FROM phusion/baseimage:latest
MAINTAINER Bart Teeuwisse <bart@thecodemill.biz>

# Install emacs with ack and git
RUN apt-get update
RUN apt-get install -y ack-grep emacs24-nox git

# Install my emacs packages and .emacs file.
ADD .emacs-install-packages.el /tmp/
RUN emacs --batch --script /tmp/.emacs-install-packages.el
RUN rm /tmp/.emacs-install-packages.el
ADD .emacs /root/

# Make bash the default shell.
ENV SHELL /bin/bash

# Disable the ssh server
RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

VOLUME ["/source", "/data"]

WORKDIR /root
CMD ["--file", "/root"]
ENTRYPOINT ["emacs"]
