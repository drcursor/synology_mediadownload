FROM debian:bullseye-slim
ARG _uid
ENV uid=1027
ENV uid=1027
ENV gid=100
RUN adduser -u ${uid} --gid ${gid} media
WORKDIR /home/media
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y nano wget links curl apt-utils bash procps less
RUN wget "https://get.filebot.net/filebot/FileBot_4.9.3/FileBot_4.9.3_amd64.deb"
RUN apt install ./FileBot_4.9.3_amd64.deb -y
RUN wget "http://ftp.ch.debian.org/debian/pool/main/t/transmission/transmission-daemon_3.00-1_amd64.deb"
RUN apt install ./transmission-daemon_3.00-1_amd64.deb -y
RUN sed -i 's/debian-transmission/media/g' /etc/init.d/transmission-daemon
COPY start.sh ./start.sh
RUN chmod a+rx start.sh
EXPOSE 9091/tcp
USER media
CMD ["./start.sh"]