FROM balenalib/rpi-raspbian:buster

RUN apt-get update && \
    apt-get install --no-install-recommends -y python3.7 python3-venv python3-pip libatlas-base-dev libblas3 libgfortran5 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN python3 -m venv venv
RUN source venv/bin/activate
RUN . /root/venv/bin/activate && pip3 install --extra-index-url=https://www.piwheels.org/simple --ignore-installed pandas==1.0.3 lxml==4.5.0 yahoo-oauth==0.1.9 matplotlib==3.2.1 


