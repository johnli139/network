#/bin/bash

PIDS=pids.txt

if [ -f "$PIDS" ]; then
   rm -f $PIDS
fi

nstat -n
#for HOST in localhost ADB-Master Segment1 Segment2 Segment3 Segment4 Segment5 Segment6 Segment7 Segment8
for HOST in $(cat hosts)
do
ping $HOST | while read pong; do echo "$(date +"%F %T"): $pong"; done > $(hostname)-$HOST.csv &
echo $! >> $PIDS
done
