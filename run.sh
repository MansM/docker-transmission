#!/bin/bash
mosquitto_pub -h 10.0.1.52 -t downloads/1 -m "Download finished: $TR_TORRENT_NAME"
wget "http://localhost:9091/transmission/rpc?method=torrent-stop&id=$TR_TORRENT_ID"
echo $?
