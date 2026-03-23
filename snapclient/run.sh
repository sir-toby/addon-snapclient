#!/usr/bin/with-contenv bashio

echo "Starting snapclient..."

snapclient --hostID $(bashio::config 'clientname') tcp://$(bashio::config 'host'):$(bashio::config 'port')
