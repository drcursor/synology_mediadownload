FROM     debian:stretch

ARG 	 _uid
ENV 	 uid=$_uid
ARG	 _gid
ENV 	 gid=$_gid

RUN      groupadd -g ${gid} media
RUN      adduser -u ${uid} --gid ${gid} media

WORKDIR  /home/media

RUN	 apt-get update
RUN	 apt-get install -y apt-utils
RUN  apt-get install -y nano wget links curl apt-utils bash procps less
RUN	 apt-get -y install python-dev libffi-dev libssl-dev python-pip
RUN	 apt-get -y install git-core libffi-dev libssl-dev zlib1g-dev libxslt1-dev libxml2-dev python python-dev build-essential
