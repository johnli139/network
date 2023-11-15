#!/bin/bash
cd /root/network
bash init.sh
cd /root
bash run_many.sh
cd /root/network
bash destroy.sh
cd /root
