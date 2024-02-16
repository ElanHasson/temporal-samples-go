#!/bin/bash env

echo "$CLIENT_PEM" > client.pem
echo "$CLIENT_KEY" > client.key

./worker -target-host "$(DROPLET_IP_ADDRESS):7233" -namespace default -client-cert ./client.pem -client-key ./client.key

