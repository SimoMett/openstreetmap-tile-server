echo "[launch-update-task.sh] se questo comando fallisce provare con"
echo "docker exec -it \`docker ps -qf ancestor=openstreetmap-tile-server_map\` bash autoimport-updates.sh updates.osc.gz"
docker exec -it `docker ps -qf ancestor=openstreetmap-tile-server-map` bash autoimport-updates.sh updates.osc.gz