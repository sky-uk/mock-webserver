#!/bin/bash
docker stop $(docker ps|grep webserver|awk '{ print $1 }')
