#!/bin/bash

nstat -s > nstat-$(hostname).out
for i in $(cat pids.txt); do kill -9 $i; done
