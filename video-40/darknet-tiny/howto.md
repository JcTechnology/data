# AlexeyAB Darknet

# Get stuff
git clone https://github.com/JcTechnology/data.git
git clone https://github.com/alexeyAB/darknet.git
wget https://pjreddie.com/media/files/darknet19_448.conv.23

mkdir -p darknet/bitwise
mv darknet19_448.conv.23 darknet/bitwise
cp data/video-40/darknet-tiny-config/* darknet/bitwise
cp data/video-40/images/*.jpg darknet/bitwise
cp data/video-40/labels/*.txt darknet/bitwise

# Make then run darknet
# cd darknet && make
./darknet detector train bitwise/obj.data bitwise/yolo-obj.cfg bitwise/darknet19_448.conv.23

