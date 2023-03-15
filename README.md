# predict-covid-19
manning.com liveproject. It is in 3 parts to [make a personalized prediction whether someone has COVID-19 based on audio data](https://www.manning.com/liveproject/handling-sensitive-data).

## Part 1: Federated Learning: Handling Sensitive Data  

* [x] read and visualize data   
* [x] extract features and labels from individuals  
* [x] apply logistic regression and decision trees

## Part 2: Federated Learning: Build Network Models for Pandemics  

* [x] Build a contact network
* [x] Compute Infection rates


## Part 3: Federated Learning: Personalized Diagnosis of Symptoms   

* [] Create a graph based iterative machine learning model  
* [] Make Federated Learning Workflow   

## File structure  

Used the `tree` command in bash terminal to create the directory structure below.   

.  
├── diagnosis-covid-19-sim-data.ipynb - machine learning modeling with graph interaction enrichment.  
├── Dockerfile - a big zip file to replicate this project on your computer.  
├── EDA-covid-19-sim-data.ipynb - Exploratory data analysis: Data loading, Data glimpses, cleaning and Data visualization.  
├── liveProject-reflections.md - What I have learned in this project.  
├── Makefile - worflow orchestration tool.  
├── math-modelling-covid-19-sim-data.ipynb - modelling simulated data with graphs.  
├── Pipfile - similar to the requirements file. But, better.  
├── Pipfile.lock - highlights specific python packages and avoids automatically upgrading packages.  
├── README.md - current file you/bots are looking at :wave:  
└── requirements.txt - has the packages used in this project for those using virtual environments.   

0 directories, 10 files   

## Docker    
Build docker image   
```bash
docker build -t fl-predict-covid-19 .
```
Run the Docker image   
```bash
docker run -it -p 8888:8888 fl-predict-covid-19:latest
```
