FROM ubuntu:18.04

WORKDIR /root/userad

COPY . .
RUN apt-get update
RUN apt-get install cron -y
RUN apt-get install acl -y
RUN apt-get install vim -y
Run apt-get install apache2 -y
RUN echo "source aliases.sh" >> /etc/bash.bashrc


CMD ["bash"]
