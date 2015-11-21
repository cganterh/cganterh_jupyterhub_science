FROM jupyter/jupyterhub

MAINTAINER Cristóbal Ganter

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install \
    python-matplotlib python3-matplotlib \
    python-scipy python3-scipy \
    python-pip python3-pip

RUN pip install -U numpy sympy scikit-learn pandas networkx
RUN pip3 install -U numpy sympy scikit-learn pandas networkx
