source run.conf

docker stop media_transmission
docker rm media_transmission

docker run -td \
 --restart=always \
 -p 9091:9091 \
 -v $work_dir/data/filebot:/home/media/filebot \
 -v $download_dir:/downloads \
 -v $media_dir:/media \
 -v $work_dir/data/transmission:/var/lib/transmission-daemon/ \
 --name media_transmission eb/transmission:1.0 \
 ./start.sh
