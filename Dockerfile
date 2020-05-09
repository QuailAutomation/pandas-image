FROM python:3.8-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y python3-numpy && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install --extra-index-url=https://www.piwheels.org/simple numpy==1.16.2 pandas==1.0.3 lxml==4.5.0 yahoo-oauth==0.1.9 matplotlib==3.2.1 


