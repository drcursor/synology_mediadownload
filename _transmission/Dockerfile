FROM     eb/debian_base:1.0

EXPOSE   9091

VOLUME   /var/lib/transmission-daemon/
VOLUME   /media

# Install Filebot
RUN 	 wget "https://get.filebot.net/filebot/FileBot_4.8.2/FileBot_4.8.2_amd64.deb"
RUN	 dpkg -i FileBot_4.8.2_amd64.deb


# Install Transmission
RUN 	 apt-get -y install transmission-daemon
RUN	 sed -i 's/debian-transmission/media/g' /etc/init.d/transmission-daemon

# Add start script

VOLUME /downloads
VOLUME /home/media/filebot

COPY start.sh /home/media 

USER     media
WORKDIR  /home/media

CMD      ["./start.sh"]
