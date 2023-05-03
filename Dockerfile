FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

WORKDIR /test_accelerate
ADD . /test_accelerate

RUN apt-get update
RUN apt-get install lsof
RUN apt-get install -y curl vim python3.8 python3.8-dev python3.8-distutils python3-pip

RUN python3.8 -m pip install --upgrade pip
RUN python3.8 -m pip install transformers accelerate deepspeed evaluate scikit-learn scipy

EXPOSE 5050
