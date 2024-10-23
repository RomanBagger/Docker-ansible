#!/bin/bash

VERSION1="2.8.6"
VERSION2="2.10.3"

docker build --build-arg ANSIBLE_VERSION=$VERSION1 -t ansible:$VERSION1 .
docker build --build-arg ANSIBLE_VERSION=$VERSION2 -t ansible:$VERSION2 .

docker run --rm -d -v $(pwd):/ansible --name ansible_container_2.8.6 ansible:2.8.6 sleep 3600
docker run --rm -d -v $(pwd):/ansible --name ansible_container_2.10.3 ansible:2.10.3 sleep 3600
