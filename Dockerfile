
FROM nvidia/cuda:10.2-devel-ubuntu18.04

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
        automake  \
        build-essential \
        curl \
        git-core  \
        libbz2-dev  \
        libsparsehash-dev \
        libtool  \
        perl \
        pkg-config  \
        unzip \
        wget \
        zlib1g-dev  \
        python3 \
        python3.6-dev \
        python3-venv \
        python3-pip \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/Kitware/CMake/releases/download/v3.15.5/cmake-3.15.5-Linux-x86_64.sh \
    && yes y | bash cmake-3.15.5-Linux-x86_64.sh \
    && ln -s //cmake-3.15.5-Linux-x86_64/bin/* /usr/local/bin


RUN git clone https://github.com/grammatical/pretraining-bea2019
WORKDIR /pretraining-bea2019/systems/tools
RUN make all
RUN git clone https://github.com/marian-nmt/marian-dev.git
ENV MARIANPATH /pretraining-bea2019/systems/tools/marian-dev
WORKDIR $MARIANPATH
RUN mkdir -p build
WORKDIR $MARIANPATH/build
RUN cmake $MARIANPATH -DCMAKE_BUILD_TYPE=release -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda/ -DCUDA_INCLUDE_DIRS=/usr/local/cuda/lib64/ && make -j $(nproc)

WORKDIR /pretraining-bea2019/systems/
RUN cd model.restricted && ./download.sh && rm -f model.restricted.tgz
RUN cd ..

RUN python3.6 -m venv env
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.6 10
RUN /bin/bash -c "source ./env/bin/activate"
RUN pip3 install spacy==1.9.0 && pip3 install https://github.com/explosion/spacy-models/releases/download/en_core_web_md-1.2.0/en_core_web_md-1.2.0.tar.gz &&  python -m spacy link en_core_web_md en_default

COPY . .
RUN ["chmod", "u+x", "run.sh"]
RUN ["chmod", "u+x", "translate.sh"]

