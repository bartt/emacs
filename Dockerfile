FROM alpine:latest

MAINTAINER Bart Teeuwisse <bart@thecodemill.biz>

# Install emacs with ack and git
RUN apk update
RUN apk add ca-certificates ack git tcpdump yajl-tools emacs-nox

# Install my emacs packages and .emacs file.
COPY .emacs-install-packages.el /tmp/
RUN emacs --batch --script /tmp/.emacs-install-packages.el
RUN rm /tmp/.emacs-install-packages.el
COPY .emacs /root/

# Make bash the default shell.
ENV SHELL /bin/bash

VOLUME ["/source", "/data"]

WORKDIR /root
CMD ["--file", "/root"]
ENTRYPOINT ["emacs"]
