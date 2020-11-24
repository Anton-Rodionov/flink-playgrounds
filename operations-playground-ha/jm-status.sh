#! /bin/bash

for j in jobmanager1 jobmanager2 jobmanager3; do
    echo "[ $j ]";
    docker-compose exec $j ss -t;
    docker-compose exec $j hostname -i;
done
