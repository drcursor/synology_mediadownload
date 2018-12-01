FROM     eb/debian_base:1.0

EXPOSE	 5080

VOLUME    /home/media/.flexget

# Install Flexget
RUN      apt-get -y install python-dev libffi-dev libssl-dev python-pip
RUN      pip install -I requests[security] flexget transmissionrpc

# Add start script

COPY start.sh /home/media 

USER     media
WORKDIR  /home/media

CMD      ["./start.sh"]
