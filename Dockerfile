FROM continuumio/miniconda3:latest


LABEL MAINTAINER="Ahmet Sarı"
LABEL GitHub="https://github.com/eeeng/testfile5sql"
LABEL version="0.0"
LABEL description="docker container flask rest api test"

SHELL ["/bin/bash", "-c"]

WORKDIR /home/data

COPY env.yaml ./

ADD app ./app

COPY serve.sh ./
RUN chmod +x serve.sh

RUN conda env update -f env.yaml

RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate" >> ~/.bashrc

EXPOSE 5000

ENTRYPOINT ["./serve.sh"]
