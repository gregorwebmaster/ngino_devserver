FROM scratch
ADD rootfs.tar.xz /
CMD ["bash"]
RUN apt update && apt install ssh git curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | -E bash -
RUN apt-get install -y nodejs
EXPOSE 22