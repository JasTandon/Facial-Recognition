# Facial-Recognition
Using openCV and Deep Learning.

Please add new folder in dataset woth your any any persons name you want the program to recognise.
Please add test images in image folder to perform facial recognition test on image sets.
Use python 3.8
Make sure you have imutils and scikit-learn installed:- 
pip3.8 install --upgrade imutils
pip3.8 install scikit-learn
Also, numpy,argparse and opencv.

For manual Proceedings:
First:-
Open up a terminal and execute the following command to compute the face embeddings with OpenCV:

python3.8 extract_embeddings.py --dataset dataset \
	--embeddings output/embeddings.pickle \
	--detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7
  
Second:-
We are gonna extract face embeddings using the below code on terminal:

python3.8 train_model.py --embeddings output/embeddings.pickle \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle
  

Third:-
Now to recognise face we will execute following command on terminal:

python3.8 recognize.py --detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7 \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle \
	--image images/BvS_ComicCon.jpg
 
 or 
 
 Use Recognize_image.sh on terminal for facial recognition of a particular image.[This will ask for user input]
++++++++++++++++++++++++++++++----------------------------------------------+++++++++++++++++++++++++++++++++++
For Automated Proceedings:-

Run Engine.sh on terminal to Recognise real-time face on video imagery



