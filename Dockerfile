FROM python:3.8-buster

RUN apt-get update
RUN apt-get install -y --no-install-recommends build-essential gcc

RUN pip install pandas==1.0.3 lxml==4.5.0 yahoo-oauth==0.1.9 lxml

