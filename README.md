# InceptionResNet_QuickDraw
Inception-ResNet is a convolutional neural network which can be trained to classify images into categories. To achieve this, we use a dataset for training the neural network. In the dataset, each image is labeled with its truth value. We feed the images to our neural network and the network makes a prediction, then we use the truth value to see how correct the network was and calculate a loss value for the correctness of the network. 

Then the network is guided through back propagation to make some changes to the trained parameters in the network to decrease the loss value. This process is repeated for each image in the dataset (Or a list of images in the training set). After the network is trained on all the images, the whole process is repeated for several times. Each repetition is called an "epoch".

The hope is to have a trained model with a high accuracy (=small loss values) after a number of epochs.

## What does an Inception-ResNet neural network look like?
<img src="/images/inception_resnet.svg" height="400">

Above is the overal structure of an Inception-ResNet network. The blocks Inception-ResNet-A, B, and C are repeated 5, 10, and 5 times. Each block has the features of both inception and ResNet blocks. The stem block accepts a tensor of size `3 * 299 * 299` and returns a tensor of size `256 * 35 * 35`. For our application, the stem block is modified to accept a tensor size of `1 * 85 * 85` as this is the shape of bitmaps generated from `.ndjson` drawings files.

The softmax layer also needs to change from 1000 outputs to a number that reflects the number of categories in the dataset.

##  What is it all about?
This repository contains an array of python notebooks (`.ipynb` files). Each notebook is fully independent from other notebooks and separetely does the following tasks:
* creates a modification of Inception-ResNet convolutional neural netwrok (CNN)
* converts `.ndjson` vector images downloaded from `https://github.com/googlecreativelab/quickdraw-dataset` to raster images (bitmaps) readable with the implemented CNN model, 
* trains the model with the converted images.
* plots graphs of the accuracy and loss of the trained model

## How can I execute the `.ipynb` files in this repository?
To be able to execute the python notebook files in this reporitory, you should satisfy the following requirements:
### If using Google Colab:
1. Mount your Google Drive to google colab
2. Go to `https://github.com/googlecreativelab/quickdraw-dataset` and under the subsection "Get the Data", go to the Google Cloud directory for "Simplified drawings files" and download an arbitrary number of `.ndjson` files of your choice and put them in a directory in your Google Drive.
3. In the codeblock where the `.ndjson` files are read, change the path `'/content/drive/MyDrive/Research/Project_Inception_ResNet/dataset/*.ndjson'` to the path in your Google Drive to the downloaded dataset files.
4. In the second codeblock, change the path for `modelFolder` to any arbitrary directory in your Google Drive.

### If using your local machine:
1. Go to `https://github.com/googlecreativelab/quickdraw-dataset` and under the subsection "Get the Data", go to the Google Cloud directory for "Simplified drawings files" and download an arbitrary number of `.ndjson` files of your choice and put them in a directory in your local machine.
2. In the codeblock where the `.ndjson` files are read, change the path `'/content/drive/MyDrive/Research/Project_Inception_ResNet/dataset/*.ndjson'` to the path in your local machine where the downloaded dataset files reside.
3. In the second codeblock, change the path for `modelFolder` to any arbitrary directory in your local machine.
4. All the required dependencies are imported in the first code block, make sure you have all of the libraries installed on your local machine. If not use the table bellow to download and install them:

Dependency | Link 
------------ | -------------
Python | https://www.python.org/
Jupyter Notebook | https://jupyter.org/
Open CV | https://pypi.org/project/opencv-python/
Matplotlib | https://matplotlib.org/stable/users/installing.html
TensorFlow | https://www.tensorflow.org/install/pip

## Guide to file names:

File names have this pattern:

Inception_ResNet_X.ipynb

X indicated in the lists bellow shows what each file does.

### Change in the width of the network - 20 categories:

The width of the Inception-ResNet networks inplemented are represented in three numbers which represent the output tensor shape of each of the Inception-ResNet blocks. For instance, `256, 896, 1792` means the network has 256 feature maps in the output of Inception-ResNet-A, 896 feature maps in the output of Inception-ResNet-B, and 1792 feature maps in the output of Inception-ResNet-C.

Width | File 
------------ | -------------
`384, 1152, 2304` | E4
`256, 896, 1792` | E3
`192, 640, 1216` | E5
`128, 448, 896` | E6
`64, 256, 480` | E7

### Change in the width of the network - 53 categories:
Width | File 
------------ | -------------
`256, 896, 1792` | E2_4
`192, 640, 1216` | E2_5
`128, 448, 896` | E2_6
`64, 256, 480` | E2_7
`32, 128, 256` | E2_8

### Change in the depth of the network - 53 categories:
In these implementations, the depth of the Inception-ResNet network is determined by the number of repetitions of the Inception-ResNet blocks. For instance, `5, 10, 5` means that Inception-ResNet-A, Inception-ResNet-B, Inception-ResNet-C are repeated 5, 10, and 5 times respectively.

Depth | File 
------------ | -------------
`1, 2, 1` | E3_8
`2, 4, 2` | E3_7
`5, 10, 5` | E2_7
`8, 16, 8` | E3_9

### Modification to some blocks of the network - 53 categories:
The modifications are depicted bellow:
* **stem modification**: This modification is done on the stem block of the network

<img src="/images/stem_modified1.svg" height="200">

* **inceptionA modification 1**: This modification is done on the Inception-ResNet-A blocks of the network

<img src="/images/inception_a_block_mod1.svg" height="200">

* **inceptionA modification 2**: This modification is done on the Inception-ResNet-A blocks of the network

<img src="/images/inception_a_block_mod2.svg" height="200">

* **inceptionB modification 1**: This modification is done on the Inception-ResNet-B blocks of the network

<img src="/images/inception_b_block_mod1.svg" height="200">

Depth | File 
------------ | -------------
No modification | E2_7
stem modification | E4_7
inceptionA modification 1 | E4_8
inceptionA modification 2 | E4_9
inceptionB modification 1 | E4_10

### About the plotter file
This repository also contains the file `Plotter.ipynb` which can be executed only after all the other `*.iphnb` files mentioned in the tables in the "Guide to file names" section have been executed. The plotter file uses the history files created by other `.ipynb` files to create plots containing information from several runs of the model.

### About the folders in this repository
All the folders starting with `trainedModel` are auto-generated with the respective `.ipynb` file and are used with the plotter file. The trained models also reside in these directories and can be extracted for inferenece in an application. 
