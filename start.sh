#!/bin/bash
# Command-line user interface to start sequences

LOOP=1

while [ $LOOP -eq 1 ] ; do
    echo "Enter a number between 1 and 10. "
    echo "[0] -> ALL"
    echo "[1] -> GStreamer"
    echo "[q] -> QUIT"
    read NUM
    case $NUM in
        0) command "sh commands.sh all" ;;
    	1) command "sh commands.sh gstreamer" ;;

    	2) echo "two" ;;
    	3) echo "three" ;;
    	4) echo "four" ;;
    	5) echo "five" ;;
    	6) echo "six" ;;
    	7) echo "seven" ;;
    	8) echo "eight" ;;
    	9) echo "nine" ;;
    	10) echo "ten" ;;

        "q") LOOP=0 ;;
        "Q") LOOP=0 ;;

    	*) echo "INVALID NUMBER!" ;;
    esac
done
echo "Bye Bye!"
