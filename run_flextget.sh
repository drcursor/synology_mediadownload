source run.conf

docker stop media_flexget
docker rm media_flexget

docker run -td \
 --restart=always \
 -p 5080:5080 \
 -v $work_dir/data/flexget:/home/media/.flexget \
 --name media_flexget eb/flexget:1.0 \
 ./start.sh
