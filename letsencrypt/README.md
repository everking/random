
### Create a Google Domains API token:
* Log in to your Google Domains account.
* Click on the domain name for which you want to create an API token.
* In the left sidebar, click on "Security". 
    * https://domains.google.com/registrar/m634.dev/security
* Scroll down to "ACME DNS API".
* Click on "Create token". 
* Save the token somewhere. You won't see the token again from the website.
* In the left sidebar, click on "DNS".
* Scroll down to the "Custom resource records" section and click on "Manage custom records".
* Click on "Create new record".
* In the "Type" field, select "TXT".
* In the "Name" field, enter "_acme-challenge".
* In the "Data" field, enter your Google Domains API token.
* Click on "Create".


### Sample certbot call
```
sudo certbot certonly --dns-google-domains --dns-google-domains-credentials ~/.secrets/certbot/google.ini --dns-google-domains-propagation-seconds 60 -d example.com -d www.example.com
```
### google.ini
```
dns_google_domains_access_token = bkZ...w==
dns_google_domains_zone = m634.dev
```


### Run docker commands using [run.sh](./run.sh)
```
➜  letsencrypt git:(main) ✗ ./run.sh
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Account registered.
Requesting a certificate for m634.dev and *.m634.dev
Unsafe permissions on credentials configuration file: /var/lib/letsencrypt/google.ini
Waiting 30 seconds for DNS changes to propagate
Encountered exception during recovery: certbot.errors.PluginError: Unable to rotate DNS challenges: 'record'

Successfully received certificate.
Certificate is saved at: /etc/letsencrypt/live/m634.dev/fullchain.pem
Key is saved at:         /etc/letsencrypt/live/m634.dev/privkey.pem
This certificate expires on 2024-05-27.
These files will be updated when the certificate renews.
NEXT STEPS:
- The certificate will need to be renewed before it expires. Certbot can automatically renew the certificate in the background, but you may need to take steps to enable that functionality. See https://certbot.org/renewal-setup for instructions.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
If you like Certbot, please consider supporting our work by:
 * Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
 * Donating to EFF:                    https://eff.org/donate-le
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
```

### References
* [Manage certificates with ACME & DNS](https://support.google.com/domains/answer/7630973)
* [Certbot Community Plugin for Google Domains](https://github.com/aaomidi/certbot-dns-google-domains)
