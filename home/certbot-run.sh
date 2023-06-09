docker compose run --rm  certbot certonly \
  --email eric.deguzman@outlook.com \
  --webroot --webroot-path /var/www/certbot/ \
  --agree-tos \
  -d m634.dev \
  -d rancher.m634.dev \
  -d argocd.m634.dev \
  -d local.m634.dev \
  -d local-argocd.m634.dev \
  -d local-rancher.m634.dev \
  -v

# https://community.letsencrypt.org/t/getting-wildcard-certificates-with-certbot/56285