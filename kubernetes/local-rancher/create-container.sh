docker run -d \
  --name local-rancher \
  --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  -v ${PWD}/rancher-pub.pem:/etc/rancher/ssl/cert.pem \
  -v ${PWD}/rancher-key.pem:/etc/rancher/ssl/key.pem \
  -v ${PWD}/rancher-pub.pem:/etc/rancher/ssl/cacerts.pem \
  --privileged \
  rancher/rancher:latest