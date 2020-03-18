#!/bin/bash
echo ""
echo "CREANDO RED"
echo ""
sleep 5

sudo docker network create --miner --driver overlay miner
echo ""
echo "EJECTANDO DOCKER STACK"
echo ""
sleep 5

sudo docker stack deploy --compose-file docker-compose.yml xmrig
