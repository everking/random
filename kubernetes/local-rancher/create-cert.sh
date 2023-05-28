mkdir -p ${HOME}/dev/rancher

openssl req \
  -x509 \
  -newkey rsa:4096 \
  -sha256 \
  -days 3560 \
  -nodes \
  -keyout ${HOME}/dev/rancher/rancher-key.pem \
  -out ${HOME}/dev/rancher/rancher-pub.pem \
  -subj '/CN=m634.dev/O=DG/OU=DGBoys' \
  -extensions san \
  -config san-config
