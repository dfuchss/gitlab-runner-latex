FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt upgrade -y

# Install Base
RUN apt install curl git vim -y

# Install Development
RUN apt install maven python3 python3-pip build-essential -y

# ZSH
RUN apt install curl zsh git -y
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN sed -i s/robbyrussell/fishy/g /root/.zshrc
RUN sed -i -r s/[\(]git[\)]/\(git\ z\ ubuntu\)/g /root/.zshrc

ENTRYPOINT /usr/bin/zsh
