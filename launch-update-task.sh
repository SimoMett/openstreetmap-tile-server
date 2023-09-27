docker exec -it `docker ps -qf ancestor=openstreetmap-tile-server_map` bash autoimport-updates.sh updates.osc.gz
