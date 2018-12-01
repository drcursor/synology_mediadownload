work_dir=`pwd`
media_dir="/volume1/Media/"
download_dir="/volume1/downloads/"

docker stop media_debug
docker rm media_debug


docker run -ti \
 -v $work_dir/data/filebot:/home/media/filebot \
 -v $download_dir:/downloads \
 -v $media_dir:/media \
 -v $work_dir/data/flexget:/home/media/.flexget \
 -v $work_dir/data/transmission:/var/lib/transmission-daemon/ \
 --name media_debug eb/transmission:1.0 \
 /bin/bash
