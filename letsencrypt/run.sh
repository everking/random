docker run \
  -v "${PWD}:/var/lib/letsencrypt" \
  -v "${PWD}/config:/etc/letsencrypt" \
  --cap-drop=all \
  ghcr.io/aaomidi/certbot-dns-google-domains:latest \
  certbot certonly \
  --agree-tos \
  --email eric.deguzman@outlook.com \
  --authenticator 'dns-google-domains' \
  --dns-google-domains-credentials '/var/lib/letsencrypt/google.ini' \
  --server 'https://acme-v02.api.letsencrypt.org/directory' \
  --non-interactive \
  --dns-google-domains-zone 'm634.dev' \
  -d 'm634.dev' \
  -d '*.m634.dev'
