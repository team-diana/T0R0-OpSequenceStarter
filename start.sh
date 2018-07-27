#!/bin/bash

# Start GStreamer streaming
echo "GStreamer: starting streaming"
gst-launch-1.0 v4l2src ! videoconvert ! video/x-raw ! jpegenc ! rtpjpegpay ! udpsink host=10.0.0.101 port=50200
