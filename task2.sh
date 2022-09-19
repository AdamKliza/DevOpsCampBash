#-waiting for a file start.txt to be created in T_ARCH

#!/bin/bash
while :
do
        while [ ! -f $T_ARCH/start.txt ]
        do
                echo "WAITING"
                sleep 2

        done
        echo "START"
        rm $T_ARCH/start.txt
        data=$(date +%Y%m%d)
        mkdir -p $T_ARCH/$data/
        cp -R $T_DATA/* $T_ARCH/$data/ 
        echo "DONE"
done


