FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

WORKDIR /test_accelerate
ADD . /test_accelerate

RUN apt-get update
RUN apt-get install lsof
RUN apt-get install -y curl python3.8 python3.8-dev python3.8-distutils

RUN python3 -m pip install --no-cache-dir --upgrade pip
RUN python3 -m pip install transformers accelerate deepspeed evaluate scikit-learn scipy

EXPOSE 5050
