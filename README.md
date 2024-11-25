# DL-HAR
Time series Analyses for Deep Learning based Human Activity Recognition

This project is implemented to recognize  the activites of 13 basketball players. In our investigatio, we used labelled data collected from wrist-watchs while the players were playing. 



# Data Pre-Processing
The data was labelled with respcet to 3 layers: Coarse, Locomotion and Basketball. 
Coarse is the general coarse of the drill/game. 


# Training Model

The processed data was then trained using the following models. We experimented with 3 different
Models using Pytorch. All the models were trained using the 80:20 approach only.The pytorch model was used for Basketball layer only. The models are as follows:

    • Single LSTM Model 
    • Double Stacked LSTM Model
    • ResNet (Transfer learning model) 

Using TensorFlow, we used only 1 model but we had three approaches. The model is similar to the Single LSTM model. The TensorFlow model was used for the **Basketball layer and Locomotion Layer**. The three approaches for the model are:
    
    • 80:20 Split
    • K-Fold method
    • LOSO
    
 # Results
 # PyTorch Results
 
![image](https://user-images.githubusercontent.com/105876342/184664947-b3731b41-7dc4-4cf1-a6f6-1abf59c224c1.png)

# TensorFlow Results
1. **For the Basketball Layer**
    
  
    **F1 Score per class**


    <img width="500" alt="image" src="https://user-images.githubusercontent.com/105876342/184665107-d53aa9e7-2d16-4085-994e-5eedfa2ff8ea.png">



2. **For the Locomotion Layer**


    **F1 score per class for Locomotion**
    
    
    <img width="500" alt="image" src="https://user-images.githubusercontent.com/105876342/184668358-18291268-d3c6-410b-9ef1-e6cc8a28603a.png">



# Pre-Trained Models
You can find all the pretrained models in the folder Pre-Trained models

1. Locomotion_LOSO - Pretrained weights for TensorFlow Locomotion with LOSO
2. locomotion_test_data - Pretrained weights for TensorFlow Locomotion with K-fold
3. locomotion_without_k_fold - Pretrained weights for TensorFlow Locomotion without K-fold.
4. LOSO - Pretrained weights for TensorFlow Basketball model with LOSO
5. test_data - Pretrained weights for TensorFlow Basketball model with k-fold
6. without_k_fold - Pretrained weights for TensorFlow Basketball model without K-fold.
7. epoch-249 - Pretrained weights for Pytorch Basketball model with single LSTM.
8. epoch-249_one - Pretrained weights for Pytorch Basketball model with double LSTM.
