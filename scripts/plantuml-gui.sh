#!/bin/bash

# Start the PlantUML web server.
#
# Author: Helio Perroni Filho

SERVER_PORT=8080

# See: https://stackoverflow.com/a/14203146/476920
while [[ $# -gt 0 ]]
do
  case $1 in
    --port)
      SERVER_PORT="$2"
      shift # past argument
      shift # past value
    ;;
    *)
      # unknown option
    ;;
  esac
done

echo "Server start"

# Process has to run in background so the wait call further below can find it.
docker run --name="plantuml-server" --rm -p $SERVER_PORT:8080 plantuml/plantuml-server &

xdg-open http://localhost:$SERVER_PORT

trap 'shutdown' SIGINT

function shutdown() {
  echo -e "\n\nServer stop"
  docker stop "plantuml-server"
}

wait
