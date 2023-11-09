#/bin/bash

for HOST in ADB-Master Segment1 Segment2 Segment3 Segment4 Segment5 Segment6 Segment7 Segment8
do

#scp startping.sh root@$HOST:/root/
#scp killping.sh root@$HOST:/root/
ssh root@$HOST "/root/killping.sh"

done
