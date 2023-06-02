kubectl create secret tls home-cert \
    --namespace home \
    --key ${HOME}/personal-dev/secrets/m634.dev/privkey3.pem \
    --cert ${HOME}/personal-dev/secrets/m634.dev/fullchain3.pem