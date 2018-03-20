#!/bin/bash
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:/usr/local/opencv-3.1.0/lib:$LD_LIBRARY_PATH
export PATH=$PATH:/usr/local/cuda-8.0/bin
export PYTHONPATH=$PYTHONPATH:/usr/local/caffe-fast-rcnn/python:/usr/local/opencv-3.1.0/lib/python2.7/dist-packages:/usr/local/hhit/detection/cardetection/carDetector/lib

killall hhdetector >>/dev/null
cd /usr/local/hhit/detection/cardetection
nohup ./hhdetector&

killall server >>/dev/null
cd /usr/local/hhit/detection/msserver/server/
nohup ./server&  

