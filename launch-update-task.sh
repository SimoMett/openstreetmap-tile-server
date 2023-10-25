TILE_SERVER_CONTAINER=$(docker ps -qf ancestor=openstreetmap-tile-server_map)

if [ -z "$TILE_SERVER_CONTAINER" ] ; then
	TILE_SERVER_CONTAINER=$(docker ps -qf ancestor=openstreetmap-tile-server-map)
fi

if [ -z "$TILE_SERVER_CONTAINER" ] ; then
      echo "[launch-update-task.sh] non è stato possibile reperire l'id del container nel tile server. Rivedere questo script"
      exit 1
fi

echo $TILE_SERVER_CONTAINER
exit 0
docker exec -it $TILE_SERVER_CONTAINER bash autoimport-updates.sh updates.osc.gz
