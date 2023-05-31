
export DATA_FOLDER="${HOME}/rancher-data"

if [ ! -d ${DATA_FOLDER} ]
then
  mkdir -p ${DATA_FOLDER}
  sudo chown root:root ${DATA_FOLDER}
  sudo touch ${DATA_FOLDER}/sample-data.txt
  echo "Created folder ${DATA_FOLDER}."
  sudo ls -ltrh ${DATA_FOLDER}
else
  echo "${DATA_FOLDER} already exists."
fi

docker run -d \
  --name local-rancher \
  --restart=unless-stopped \
  -p 9090:80 -p 9443:443 \
  -p 30000-32767:30000-32767 \
  -v ${DATA_FOLDER}:/var/lib/rancher \
  -v ${HOME}/dev/random/home/certbot/conf/archive/m634.dev/fullchain3.pem:/etc/rancher/ssl/cert.pem \
  -v ${HOME}/dev/random/home/certbot/conf/archive/m634.dev/privkey3.pem:/etc/rancher/ssl/key.pem \
  -v ${HOME}/dev/random/home/certbot/conf/archive/m634.dev/fullchain3.pem:/etc/rancher/ssl/cacerts.pem \
  --privileged \
  rancher/rancher:latest
