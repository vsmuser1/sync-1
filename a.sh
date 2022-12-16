#!/usr/bin/bash
start=$1
end=$2
read -r -d '' USES << EOM
Incorrect arguments passed
    Uses:
    tutorial.sh  
    tutorial.sh 2019-01-01 2019-01-05
EOM

case $# in
      1)
        date "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'" -d "$start" > /dev/null  2>&1
        if [ $? != 0 ]
        then
            echo Start date $start is NOT a valid YYYY-MM-DD date
            exit 1
        else 
           if [ -z "$end" ]
              then
                echo "$USES"
                exit 1
            fi
        fi
