#Remember in colab
Edit > Notebook settings > Hardware accelerator = GPU


#Ian Goncharov's colab file
https://github.com/ivangrov/YOLOv3-GoogleColab/blob/master/YOLOv3_GoogleColab.ipynb

#yolo anchors
https://www.youtube.com/results?search_query=yolo+anchor
https://medium.com/@andersasac/anchor-boxes-the-key-to-quality-object-detection-ddf9d612d4f9

#Start Training YOLOv3 Using Darknet to Detect Custom Objects || YOLOv3 Series 5
modify cfg and generate anchors
https://www.youtube.com/watch?v=TP67icLSt1Y

Manivannan Murugavel NFPA Dataset 2018)
https://medium.com/@manivannan_data/how-to-train-yolov2-to-detect-custom-objects-9010df784f36



# Change a file using sed - example
#!cat Makefile
!sed -i 's/GPU=0/GPU=1/g' darknet/Makefile
!sed -i 's/CUDNN=0/CUDNN=1/g' darknet/Makefile
#!sed -i 's/CUDNN_HALF=0/CUDNN_HALF=1/g' Makefile
!head darknet/Makefile



darknet
--dont_show



# Write a file in colab
p = """
write stuff here that doesn't contain triple double quotes :)
"""
c = """text_file = open("Makefile", "w+");text_file.write(p);text_file.close()""" 
exec(c)


# Weights urls
!wget https://pjreddie.com/media/files/darknet53.conv.74
#wget https://pjreddie.com/media/files/darknet19_448.conv.23
#wget https://www.dropbox.com/s/yvca2um3dketvxi/first-test-core-yolo-obj_20000.weights?dl=0


# COCO Dataset (for use with ultralytics yolov3)
yolov3/data/get_coco_dataset.sh


# Colab clear output
from IPython.display import clear_output

for i in range(10):
    clear_output()
    print("Hello World!")


## Rename files to a numbered pattern. Change a=1 as desired
a=1
for i in *.jpg; do
  newjpg=$(printf "%04d.jpg" "$a") #04 pad to length of 4
  mv -i -- "$i" "$newjpg"
  let a=a+1
done


# join images together to make a video

    ffmpeg -framerate 25 -i pictures_%08d.jpg -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p output.mp4


# run detection on video and output images.  requires opencv

    ./darknet detector demo obj.data yolo-obj.cfg yolo-obj.weights video.mp4 -prefix pictures


# Helpful code
    git log --oneline
    sudo apt-get install eog scrot  # screen shot and eog is an image viewer
    find path -name query
 
# Using google drive

from google.colab import drive
drive.mount('/content/drive')


