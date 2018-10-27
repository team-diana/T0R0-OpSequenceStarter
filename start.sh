#!/bin/bash
# Command-line user interface to start sequences

LOOP=1

while [ $LOOP -eq 1 ] ; do
    echo "\n--------------------------------\n"
    echo "Enter a number between 1 and 10. "
    echo "[0] -> ALL"
    echo "[1] -> GStreamer"
    echo "[2] -> Altec"
    echo "[9] -> Change system date"
    echo "[q] -> QUIT"
    echo -n "\n\033[92m→\033[1;39m  Insert Option \033[0;91m»\033[0m "
    read NUM
    echo "\n--------------------------------\n"
    case $NUM in
        0) sh commands.sh all ;;
    	1) sh commands.sh gstreamer ;;

    	2) sh commands.sh altec ;;
    	3) echo "three" ;;
    	4) echo "four" ;;
    	5) echo "five" ;;
    	6) echo "six" ;;
    	7) echo "seven" ;;
    	8) echo "eight" ;;
    	9) sh commands.sh date ;;
    	10) echo "ten" ;;

        "q") LOOP=0 ;;
        "Q") LOOP=0 ;;

    	*) echo "INVALID NUMBER!" ;;
    esac
done
echo "\n\033[0;93mBye Bye!\033[0m\n"
