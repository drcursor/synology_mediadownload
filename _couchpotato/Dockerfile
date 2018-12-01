FROM     eb/debian_base:1.0

EXPOSE	 5050

VOLUME   /opt/cp_data
VOLUME   /media

# Install Couchpotato reqs
RUN      pip install lxml cryptography pyopenssl

# Install Couchpotato from source
RUN	git clone https://github.com/RuudBurger/CouchPotatoServer.git /opt/cp
RUN	chown -R media /opt/cp

# Add start script

COPY start.sh /home/media 

USER     media
WORKDIR  /home/media

CMD      ["./start.sh"]
