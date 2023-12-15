TILE_SERVER_CONTAINER=$(docker ps -qf ancestor="osm-for-snap4city-map")

if [ -z "$TILE_SERVER_CONTAINER" ] ; then
	TILE_SERVER_CONTAINER=$(docker ps -qf ancestor="osm-for-snap4city_map")
fi

if [ -z "$TILE_SERVER_CONTAINER" ] ; then
      echo "[launch-update-task.sh] non è stato possibile reperire l'id del container nel tile server. Rivedere questo script"
      exit 1
fi

docker exec -it $TILE_SERVER_CONTAINER bash autoimport-updates.sh updates.osc.gz
echo "$(date -u +%Y-%m-%d_%H:%M:%S)" > last-update.txt
