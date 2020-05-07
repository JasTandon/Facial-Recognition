#This is the main engine. Please create a new dataset folder with your name. Store your images so that the engine can extract and analyse images for facial Recognition.
#It will at the end, initiate video mode for it to detect face in real-time.


#we will first analyse the datasets and images in it.
echo "Analysing Datasets"
echo "Initiating Image recognition into module.."
python3.8 extract_embeddings.py --dataset dataset \
	--embeddings output/embeddings.pickle \
	--detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7

wait
sleep 3

echo "Training the Module with Provided Data sets..."


# This will train the module with the given data sets
python3.8 train_model.py --embeddings output/embeddings.pickle \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle

wait
sleep 3

echo "Training Complete"
echo "Initiating Video Mode"


#Now we will initiate video mode for real time facial recognition of the provided datasets.

wait
sleep 2

python3.8 recognize_video.py --detector face_detection_model \
	--embedding-model openface_nn4.small2.v1.t7 \
	--recognizer output/recognizer.pickle \
	--le output/le.pickle
