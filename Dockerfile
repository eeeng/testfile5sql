FROM continuumio/miniconda3:latest


LABEL MAINTAINER="Ahmet Sarı"
LABEL GitHub="https://github.com/bpostance/deng.learn/tree/master/docker"
LABEL version="0.0"
LABEL description="A Docker container to serve a simple Python Flask API"

SHELL ["/bin/bash", "-c"]

WORKDIR /home/data

COPY environment.yml ./

ADD app ./app

COPY serve.sh ./
RUN chmod +x serve.sh

RUN conda env update -f environment.yml

RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate" >> ~/.bashrc

EXPOSE 5000

ENTRYPOINT ["./serve.sh"]