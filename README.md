
[![game123](https://circleci.com/gh/game123/mlapi.svg?style=svg)](https://app.circleci.com/pipelines/github/game123/mlapi/3/workflows/7d83501d-7232-454a-b743-da24aaf4021d)

## Project Overview


A `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project is a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The goal of this project is to operationalize the working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project,  the following will be completed:
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested
* 



---

## Files explanation

* .circleci/config.yml: Tests configuration file for CircleCI
* app.py: Python flask app providing Restful API for housing price predictions 
* Dockerfile: Dockerfile for the docker image
* make_prediction.sh: Script files for sending a request to the Python flask app.
* Makefile: Environment setup and lint tests
* run_docker.sh: Script file to get Docker running
* run_kubernetes.sh: Script file to run the app in kubernetes locally
* upload_docker.sh: Script file for pushing the docker image to docker hub

## Setup the Environment

* Create a virtualenv and activate it
```python3 -m venv ~/.devops```
```source ~/.devops/bin/activate```


* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

1. `brew cask install virtualbox`
2. `brew cask install minikube`
3. `minikube start --driver=virtualbox`
4. `./run_kubernetes.sh`
5. `./make_prediction.sh` (In another terminal)
6. `minikube delete`