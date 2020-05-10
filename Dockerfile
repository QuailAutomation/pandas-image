FROM balenalib/rpi-raspbian:buster

RUN apt-get update && \
    apt-get install --no-install-recommends -y python3-pip python3-numpy && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install --extra-index-url=https://www.piwheels.org/simple --ignore-installed pandas==1.0.3 lxml==4.5.0 yahoo-oauth==0.1.9 matplotlib==3.2.1 


