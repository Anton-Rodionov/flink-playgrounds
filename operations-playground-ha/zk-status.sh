#! /bin/bash

for z in zoo1 zoo2 zoo3; do
    echo "[ $z ]";
    docker-compose exec $z bin/zkServer.sh status | grep -i "mode";
    docker-compose exec $z hostname -i;
done
