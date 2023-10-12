docker exec -it `docker ps -qf ancestor=openstreetmap-tile-server-map` bash autoimport-updates.sh updates.osc.gz
