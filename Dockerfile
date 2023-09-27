FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-devel

WORKDIR /app

COPY . /app/

RUN apt update && apt-get install -y wget vim

RUN pip3 install -e .

CMD tail -f /dev/null
