#!/bin/bash -e
if [ -z $1 ]; then
  echo "Usage: $0 <number of containers to run>"
  exit
fi

num_containers=$1
set -e

function run-container() {
  local index="${1}"
  local port=$((8000 + $index))
  docker run -d \
    --name webserver${index} \
    -p ${port}:80 \
    -e HELLO=WORLD${index} \
    basic-webserver --hello=world${index}
}

for i in `seq 1 10`;
do
  run-container $i
done
