source run.conf

docker stop media_couchpotato
docker rm media_couchpotato

docker run -td \
 --restart=always \
 -p 5050:5050 \
 -v $work_dir/data/couchpotato:/opt/cp_data \
 -v $media_dir:/media \
 --name media_couchpotato eb/couchpotato:1.0 \
 ./start.sh
