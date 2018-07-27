#!/bin/bash
# Commands that will be launched

## !! Add in this script the new commands and update start.sh

if [[ $1 -eq "" ]]; then
    echo "Error: No argument/s."
fi

for var in "$@"
    do
        echo "$var"
        case $var in
            "all") command "sh commands.sh gstreamer" ;;    # HERE the commands that have to be launched with "all"

            "gstreamer") # Start GStreamer streaming
            echo "GStreamer: starting streaming"
            gst-launch-1.0 v4l2src ! videoconvert ! video/x-raw ! jpegenc ! rtpjpegpay ! udpsink host=10.0.0.101 port=50200;;

            *) echo "INVALID ARGUMENT!" ;;
        esac

    done
