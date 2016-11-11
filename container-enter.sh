#!/bin/bash

pid=$(docker inspect $1 | grep Pid\" | cut -d ':' -f2 | cut -d ',' -f1)

nsenter -n -i -t $pid sh
