# Define base image
FROM continuumio/miniconda3

COPY confindr.yml .
RUN conda env create -f confindr.yml
RUN echo "source activate confindr" > ~/.bashrc

ENV PATH /opt/conda/envs/confindr/bin:$PATH
