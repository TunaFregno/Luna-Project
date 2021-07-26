# get base image from docker hub
FROM continuumio/miniconda3:latest

# create backend folder and copy requirements there
RUN mkdir -p /backend
COPY ./backend/requirements.yml /backend/requirements.yml

# create conda env based on requirements.yml
RUN /opt/conda/bin/conda env create -f /backend/requirements.yml

# set path variable and open bash
ENV PATH /opt/conda/envs/luna-backend/bin:$PATH
RUN echo "source activate luna-backend" >~/.bashrc

# copy env folder
RUN mkdir -p /env
COPY ./env /env

# copy scripts folder and make sure scripts can be executed
RUN mkdir -p /scripts
COPY ./scripts /scripts
RUN chmod +x /scripts/*

# copy backend folder and make it workdir
COPY ./backend /backend
WORKDIR /backend
