# predict-covid-19
manning.com liveproject. It is in 3 parts to [make a personalized prediction whether someone has COVID-19 based on audio data](https://www.manning.com/liveproject/handling-sensitive-data).

## Part 1: Federated Learning: Handling Sensitive Data  

[x] read and visualize data   
[] extract features and labels from individuals  
[] apply logistic regression and decision trees

## Part 2: Federated Learning: Build Network Models for Pandemics  


## Part 3: Federated Learning: Personalized Diagnosis of Symptoms   

## File structure

## Docker    
Build docker image   
```bash
docker build -t fl-predict-covid-19 .
```
Run the Docker image   
```bash
docker run -it -p 8888:8888 fl-predict-covid-19:latest
```
