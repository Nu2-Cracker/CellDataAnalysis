FROM python:3.9.3-buster
# FROM julia:buster
#python:3.7

RUN dpkg --add-architecture i386

RUN apt-get update && apt-get upgrade -y

RUN apt-get install r-base r-base-dev wget curl vim git -y

#共有
RUN mkdir /works && mkdir -p /works/include



#jupyter
RUN apt-get install jupyter-notebook -y

# nteract
RUN pip install nteract_on_jupyter numpy pandas

#R nteract kernel
WORKDIR /works
# RUN Rscript install.R


EXPOSE 8444