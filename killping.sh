#!/bin/bash

for i in $(cat pids.txt ); do kill -9 $i; done
