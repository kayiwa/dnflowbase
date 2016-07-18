# base dnflow image
FROM krallin/ubuntu-tini:trusty

MAINTAINER Francis Kayiwa "kayiwa@pobox.com"

LABEL "License"="ISC"

RUN apt-get update -y && apt-get install build-essential -y

RUN apt-get update -y && apt-get install python3 python3-dev python3-pip -y

RUN pip3 install -U pip

RUN apt-get update -y && apt-get install git curl wget apt-transport-https -y

RUN apt-get update -y && apt-get install gfortran libblas3gf libblas-dev liblapack3gf liblapack-dev -y

RUN apt-get update -y && apt-get install libatlas-base-dev libxml2-dev libxslt1-dev libreadline6 libreadline6-dev -y

RUN apt-get update -y && apt-get install libjpeg8 libjpeg8-dev libfreetype6 libfreetype6-dev libffi-dev zlib1g-dev -y

RUN apt-get update -y && apt-get install openssl libssl-dev -y

RUN apt-get update -y && apt-get install pkg-config software-properties-common ca-certificates -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

