docker run -d \
  --name local-rancher \
  --restart=unless-stopped \
  -p 8080:80 -p 8443:443 \
  -v ${HOME}/dev/rancher:/var/lib/rancher \
  -v ${HOME}/dev/rancher/rancher-pub.pem:/etc/rancher/ssl/cert.pem \
  -v ${HOME}/dev/rancher/rancher-key.pem:/etc/rancher/ssl/key.pem \
  -v ${HOME}/dev/rancher/rancher-pub.pem:/etc/rancher/ssl/cacerts.pem \
  --privileged \
  rancher/rancher:latest