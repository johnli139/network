#/bin/bash

for HOST in ADB-Master Segment1 Segment2 Segment3 Segment4 Segment5 Segment6 Segment7 Segment8
do

ssh root@$HOST "/root/killping.sh"
scp root@$HOST:/root/*.out ./out/
scp root@$HOST:/root/*.csv ./out/

done
