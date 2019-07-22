Trained for 20000 epochs on video 40 dataset using tiny-yolo.cfg modified with batch=24, classes=1, and filters=30 (line 114). avg loss ~ 0.06.  Massively overtrained on video 40.  

https://medium.com/@manivannan_data/how-to-train-yolov2-to-detect-custom-objects-9010df784f36

A final file we have to prepare (I know, powerful GPU eagerly waiting to start crunching!), is the .cfg file. I just duplicated the tiny-yolo.cfg file, and made the following edits:
Line 2: set batch=24, this means we will be using 64 images for every training step
Line 3: set subdivisions=8, the batch will be divided by 8 to decrease GPU VRAM requirements. If you have a powerful GPU with loads of VRAM, this number can be decreased, or batch could be increased. The training step will throw a CUDA out of memory error so you can adjust accordingly.
Line 120: set classes=1, the number of categories we want to detect
Line 114: set filters=(classes + 5)*5 in our case filters=30

To start training, YOLOv2 requires a set of convolutional weights. To make things a little easier, Joseph offers a set that was pre-trained on Imagenet. This conv.23 file can be downloaded (76Mb) from the official YOLOv2 website and provides an excellent starting point. We’ll need this file for the next step.

./darknet detector test ../data/obj.data ../data/first.cfg ../data/first.weights < ../data/VIRB0040.txt > log.txt


