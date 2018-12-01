# What does it do

Easy and maintainable way to install Transmission (Torrent downloader), Filebot (Media organizer), Flexget (used for RSS processing), Couchpotato (Movie tracking).

# Why ?

Because Synocommunity is great, but their packages are usually out of data, and its hard to keep everything running with the correct user permissions.

# Requirements

- Synology device with support for Docker (well, actually... the Dockerfiles are generic enough, so they should run on anything capable of running Docker)
- Filebot license
- ShowRSS account (nice to have)
- IMDB account (nice to have)
- Lots of free hard drive space

# How to install

- Install Docker app on your Synology device
- Add a user with the name 'docker'
- Extract this repository to the directory where you want to keep the configuration, state and databases for all apps
- Edit run.conf and correct the paths
- Edit _flexget/start.sh and set the Flexget password
- Run 0_build.sh - this will create the docker images
- Run 1_sampleconfig.sh - this will copy the initial configuration files
- Copy your filebot license (.psm) to config/filebot/
- Edit the relevant configuration files
  - Transmission - data/transmission/info/settings.json
    - rpc-password
  - Couchpotato - data/couchpotato/settings.conf
    - transmission - host, password
    - imdb / automation_urls
  - Flexget - data/flexget/config.yml
    - tasks / showrss task / rss, host, username, password
- Run 2_run.sh - this will start the docker instances

# How to access the installed applications

- Transmission - http://nas:9091
- Flexget - http://nas:5080
- Couchpotato - http://nas:5050 

# TODO

- Script config changes
- Improve this file
