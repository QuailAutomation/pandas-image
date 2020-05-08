FROM python:3.8-slim

RUN apt-get update & apt-get install -y python3-pip

RUN pip install pandas==1.0.3 lxml==4.5.0 yahoo-oauth==0.1.9 matplotlib==3.2.1

