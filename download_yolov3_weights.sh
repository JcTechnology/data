#!/bin/bash

# make '/weights' directory if it does not exist and cd into it
mkdir -p weights && cd weights

# copy darknet weight files, continue '-c' if partially downloaded
wget -c https://pjreddie.com/media/files/yolov3.weights
wget -c https://pjreddie.com/media/files/yolov3-tiny.weights
wget -c https://pjreddie.com/media/files/yolov3-spp.weights

# yolov3 pytorch weights
# download from Google Drive: https://drive.google.com/drive/folders/1uxgUBemJVw9wZsdpboYbzUN4bcRhsuAI

# darknet53 weights (first 75 layers only)
wget -c https://pjreddie.com/media/files/darknet53.conv.74

# yolov3-tiny weights from darknet (first 16 layers only)
# ./darknet partial cfg/yolov3-tiny.cfg yolov3-tiny.weights yolov3-tiny.conv.15 15
# mv yolov3-tiny.conv.15 ../

#wget https://pjreddie.com/media/files/darknet19_448.conv.23
#wget https://www.dropbox.com/s/yvca2um3dketvxi/first-test-core-yolo-obj_20000.weights?dl=0
