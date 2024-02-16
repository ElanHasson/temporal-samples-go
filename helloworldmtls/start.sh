#!/bin/bash env

echo "$CLIENT_PEM" > bin/client.pem
echo "$CLIENT_KEY" > bin/client.key

bin/starter -target-host "$(DROPLET_IP_ADDRESS):7233" -namespace default -client-cert bin/client.pem -client-key bin/client.key

