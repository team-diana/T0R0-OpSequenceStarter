#!/bin/bash
# Commands that will be launched

## !! Add in this script the new commands and update start.sh

if [ $1  = '' ]; then
    echo "Error: No argument/s."
fi

for var in "$@"
    do
        echo "$var"
        case $var in
            "all") sh commands.sh gstreamer ;;    # HERE the commands that have to be launched with "all"

            "gstreamer") # Start GStreamer streaming
            echo "GStreamer: starting streaming"
            gst-launch-1.0 v4l2src ! videoconvert ! video/x-raw ! jpegenc ! rtpjpegpay ! udpsink host=10.0.0.101 port=50200;;
            
            "altec") # Start Mobility and Arm driver developed for Altec
            echo "Altec: starting Mobility and Arm driver"
            cd ~/salone-orientamento-demo/altec/build && cmake.. && make && ./altec ;;
            
            "date")
            echo "Set current date [yyyy mm dd hh mm]"
            echo -n " > "
            read YEAR MONTH DAY HOUR MIN
            months=( ["01"]="Jan" ["02"]="Feb" ["03"]="Mar" ["04"]="Apr" ["05"]="May" ["06"]="Jun" ["07"]="Jul" ["08"]="Agu" ["09"]="Sep" ["10"]="Oct" ["11"]="Nov" ["12"]="Dec")
            echo "${DAY} ${months[${MONTH}]} "${YEAR} ${HOUR}:${MIN}:30"
            #sudo date --set="${DAY} ${months[${MONTH}]} "${YEAR} ${HOUR}:${MIN}:30"
            ;;
            
            *) echo "INVALID ARGUMENT!" ;;
        esac

    done
