FROM ubuntu
MAINTENANCE "ravi"
RUN "apt update & apt install tree -y"
WORKDIR /app
EXPOSE 6000
ADD . /app
EXPOSE 5000
<<<<<<< Updated upstream
CMD [pythin abc.py]
=======
ENTERY-POINT
>>>>>>> Stashed changes
