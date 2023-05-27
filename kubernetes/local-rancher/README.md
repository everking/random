
* https://ranchermanager.docs.rancher.com/v2.5/pages-for-subheaders/rancher-on-a-single-node-with-docker

```
docker run -d \
  --name local-rancher \
  --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  -v ${PWD}/server.crt:/etc/rancher/ssl/cert.pem \
  -v ${PWD}/server.key:/etc/rancher/ssl/key.pem \
  -v ${PWD}/server.crt:/etc/rancher/ssl/cacerts.pem \
  --privileged \
  rancher/rancher:latest
```