#!/bin/bash
docker rm $(docker ps --all|grep webserver|awk '{ print $1 }')
