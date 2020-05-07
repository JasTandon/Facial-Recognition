#This script lets you run facial recognition on selected user provided image in image folder.


echo "Welcome to Image Recognition Engine\n"
echo "Enter the name of the Image file in the Image folder you want to run recognition on."
read -p "[Enter the complete Image name along with extension, example: image.jpg]: " usr_inpt

echo "Initiating image recognition on $usr_inpt ..."

wait
sleep 3


python3.8 recognize.py --detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7 \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle \
	--image images/$usr_inpt
