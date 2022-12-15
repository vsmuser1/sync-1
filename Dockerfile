FROM ubuntu
RUN "apt update & apt install tree -y"
WORKDIR /app
ADD . /app
