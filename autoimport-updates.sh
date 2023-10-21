sudo -u renderer osm2pgsql -d gis -a -s --tag-transform-script /data/style/${NAME_LUA:-openstreetmap-carto.lua} -S /data/style/${NAME_STYLE:-openstreetmap-carto.style} /data/updates/$1
sudo -u renderer osm2pgsql -d gis -a -s --tag-transform-script /data/style/${NAME_LUA:-openstreetmap-carto.lua} -S /data/style/${NAME_STYLE:-openstreetmap-carto.style} /data/updates/$1 -e18-20 -o /data/expire.list
cat /data/expire.list | render_expired --max-zoom=20 --touch-from=10 --delete-from=15
