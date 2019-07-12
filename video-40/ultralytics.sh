# git clone https://github.com/nicolas42/data.git
git clone https://github.com/ultralytics/yolov3.git
git clone https://github.com/pdollar/coco

mkdir -p coco/images/val2014
mkdir -p coco/labels/val2014

cp data/video-40/images/*.jpg coco/images/val2014
cp data/video-40/labels/*.txt coco/labels/val2014
cp data/video-40/ultralytics/* yolov3/data


cd yolov3
python3 train.py --data data/obj.data

to resume
python3 train.py --data data/obj.data --resume

