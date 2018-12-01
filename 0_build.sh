_UID=$(id -u docker)
_GID=$(id -g docker)

docker build _base -t eb/debian_base:1.0 \
  --build-arg _uid=$_UID \
  --build-arg _gid=$_GID

docker build _transmission -t eb/transmission:1.0

docker build _flexget -t eb/flexget:1.0

docker build _couchpotato -t eb/couchpotato:1.0
