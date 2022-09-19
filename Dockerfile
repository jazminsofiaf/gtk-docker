# to build run `docker build --progress=plain --no-cache -t gtkimage .`
# to build with different version, use --build-arg SYS_VERSION=16.04
# ARG SYS_VERSION=3.14
# FROM alpine:${SYS_VERSION}
ARG SYS_VERSION=22.04
FROM ubuntu:${SYS_VERSION}

# Install prerequisites
RUN apt-get update && apt-get install -y curl

# Install rustup
RUN mkdir $HOME/.cargo
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="root/.cargo/bin:${PATH}"
RUN cargo --help

# Install GTK4
RUN apt-get install  -y libgtk-4-dev build-essential
