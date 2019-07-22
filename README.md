git clone https://github.com/AlexeyAB/darknet.git
wget https://pjreddie.com/media/files/darknet19_448.conv.23 darknet

# make
#./darknet detector train ../data/obj.data ../data/yolo-obj.cfg darknet19_448.conv.23 -dont_show
#./darknet detector train ../data/obj.data ../data/yolo-obj.cfg ../data/backup/yolo-obj_last.weights -dont_show
#./darknet detector demo ../data/obj.data ../data/yolo-obj.cfg ../data/backup/yolo-obj_last.weights VIRB0040.mp4 -prefix pictures
# ffmpeg -framerate 25 -i pictures_%08d.jpg -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p output.mp4

based on this https://medium.com/@manivannan_data/how-to-train-yolov2-to-detect-custom-objects-9010df784f36


# ideas
calc_anchors
use pretrained weights
use weights from one video and train them for another video



# how to train yolov3 tiny
wget https://pjreddie.com/media/files/yolov3-tiny.weights
./darknet partial cfg/yolov3-tiny.cfg yolov3-tiny.weights yolov3-tiny.conv.15 15
./darknet detector train ../data/obj.data ../data/yolov3-tiny-obj.cfg yolov3-tiny.conv.15 -map -dont_show



./darknet detector train ../data/obj.data ../data/yolov2-tiny.cfg darknet19_448.conv.23 -dont_show -map


./darknet detector calc_ancohrs ../data/obj.data -num_of_clusters 9 -width 608 -height 608

./darknet detector test ../data/obj.data ../data/yolov2-tiny.cfg darknet19_448.conv.23 < ../data/train.txt > log.txt

