#!/bin/bash

SERVER_IP=$(hostname -I | awk '{print $1}')

echo "Enter the starting port number:"
read START_PORT
echo "Enter the proxy username:"
read USERNAME
echo "Enter the proxy password:"
read PASSWORD
echo "Enter the number of times you want to deploy the proxy:"
read COUNT

> proxies.txt

for ((i=0; i<COUNT; i++)); do
    PORT=$((START_PORT + i))
    NAME="proxy$((i+1))"
    docker run --name $NAME --detach --restart=always --publish $PORT:3128 \
        --env USERNAME="$USERNAME" --env PASSWORD="$PASSWORD" --env PORT="$PORT" \
        my-squid-proxy
    echo "Deployed $NAME on port $PORT"
    echo "$SERVER_IP:$PORT:$USERNAME:$PASSWORD" >> proxies.txt
done

echo "Deployment completed for $COUNT proxies."
echo "Proxy details have been saved to proxies.txt."
cat ./proxies.txt
