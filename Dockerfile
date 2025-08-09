FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && apt-get install -y \
    curl build-essential lldb \
    neovim ripgrep fd-find unzip git \
    && curl https://sh.rustup.rs -sSf | sh -s -- -y \
    && . $HOME/.cargo/env \
    && rustup default stable

WORKDIR /usr/src/



    
