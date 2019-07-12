
# Requirements for ultralytics yolov3

# Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

conda install numpy opencv matplotlib tqdm pillow
conda install pytorch torchvision -c pytorch
conda install -c conda-forge scikit-image


# How to Upload Results to Dropbox
You'll need to follow the instructions to get an authentication key if you don't already have one.

git clone https://github.com/andreafabrizi/Dropbox-Uploader.git
cd Dropbox-Uploader/
chmod +x dropbox_uploader.sh
./dropbox_uploader.sh
<need dropbox authentication key>

/dropbox_uploader.sh upload src dest



# Ivan Goncharov's Colab Stuff
https://github.com/ivangrov/YOLOv3-GoogleColab/blob/master/YOLOv3_GoogleColab.ipynb




# How to modify a file using sed

#!cat Makefile
!sed -i 's/GPU=0/GPU=1/g' Makefile
!sed -i 's/CUDNN=0/CUDNN=1/g' Makefile
!sed -i 's/CUDNN_HALF=0/CUDNN_HALF=1/g' Makefile
#!cat Makefile



