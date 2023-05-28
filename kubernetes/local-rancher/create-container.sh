
export DATA_FOLDER="${HOME}/rancher-data"

if [ ! -d ${DATA_FOLDER} ]
then
  mkdir -p ${DATA_FOLDER}
  sudo chown root:root ${DATA_FOLDER}
  touch ${DATA_FOLDER}/sample-data.txt
  echo "Created folder ${DATA_FOLDER}."
  ls -ltrh ${DATA_FOLDER}
else
  echo "${DATA_FOLDER} already exists."
fi

docker run -d \
  --name local-rancher \
  --restart=unless-stopped \
  -p 8080:80 -p 8443:443 \
  -v ${DATA_FOLDER}:/var/lib/rancher \
  -v ${HOME}/dev/rancher/rancher-pub.pem:/etc/rancher/ssl/cert.pem \
  -v ${HOME}/dev/rancher/rancher-key.pem:/etc/rancher/ssl/key.pem \
  -v ${HOME}/dev/rancher/rancher-pub.pem:/etc/rancher/ssl/cacerts.pem \
  --privileged \
  rancher/rancher:latest