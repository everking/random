echo "Update Google Domain"
echo
if [ -z "${IP}" ]
then
    echo "NO IP set. IP will be set based on IP address of the server hitting the Google API."
else
    export IP_PARAM="&myip=${IP}"
    echo "IP set to ${IP}."
fi

#!/bin/bash

### Google Domains provides an API to update a DNS "Syntheitc record". This script
### updates a record with the script-runner's public IP, as resolved using a DNS
### lookup.
###
### Google Dynamic DNS: https://support.google.com/domains/answer/6147083
### Synthetic Records: https://support.google.com/domains/answer/6069273

source ./dont-save/.credentials.sh

if [ -z "${USERNAME}" ]
then
    echo "USERNAME:"
    read USERNAME
fi

if [ -z "${PASSWORD}" ]
then
    echo "PASSWORD:"
    read PASSWORD
fi

if [ -z "${PASSWORD}" ] || [ -z "${USERNAME}" ];
then
    echo "Both USERNAME and PASSWORD are required. Please update .credentials.sh or respond to prompts."
    exit 1
fi

HOSTNAME="m634.dev"

echo
echo "${HOSTNAME} ==> ${IP}"
echo
# Update Google DNS Record
URL="https://${USERNAME}:${PASSWORD}@domains.google.com/nic/update?hostname=${HOSTNAME}${IP_PARAM}"
curl -s $URL
echo
echo "done."
echo