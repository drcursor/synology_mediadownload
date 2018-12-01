source run.conf

# Transmission
mkdir -p $work_dir/data/transmission/info
cp $work_dir/_transmission/settings.json.ori $work_dir/data/transmission/info/settings.json

# Filebot
mkdir -p $work_dir/data/filebot
cp $work_dir/_transmission/process.sh.ori $work_dir/data/filebot/process.sh
chmod a+x $work_dir/data/filebot/process.sh

# Flexget
mkdir -p $work_dir/data/flexget
cp $work_dir/_flexget/config.yml.ori $work_dir/data/flexget/config.yml

# Couchpotato
mkdir $work_dir/data/couchpotato
cp $work_dir/_couchpotato/settings.conf.ori $work_dir/data/couchpotato/settings.conf

chown -R docker:users $work_dir/data
