FROM ubuntu:21.10
RUN apt-get update
RUN apt-get install -y mira-assembler 
RUN apt-get install -y curl
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN python3 -m pip install pip
RUN python3 -m pip install --upgrade cutadapt 

# COPY Miniconda3-latest-Linux-x86_64.sh Miniconda3-latest-Linux-x86_64.sh
# RUN echo 'yes'| sh Miniconda3-latest-Linux-x86_64.sh && rm -rf Miniconda3-latest-Linux-x86_64.sh


# RUN conda config --add channels defaults && \
#     conda config --add channels bioconda && \ 
#     conda config --add channels conda-forge && \
#     conda create -n cutadaptenv cutadapt bwa bowtie hisat star && \
#     conda activate cutadaptenv

RUN mkdir /log

COPY scripts/* /usr/bin/
COPY makefiles /makefiles
COPY manifest.conf /manifest.conf

RUN chmod -R +x /usr/bin

VOLUME [ "/data" ]
