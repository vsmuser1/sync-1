FROM ubuntu
MAINTENANCE "ravi"
RUN "apt update & apt install tree -y"
WORKDIR /app
EXPOSE 6000
ADD . /app
EXPOSE 5000
