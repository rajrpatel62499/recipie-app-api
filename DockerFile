FROM python:3.7-alpine

LABEL AUTHOR="Raj Patel"  

# it is needed to run python in docker file to unbuffer output and not storing it for performance.
ENV PYTHONUNBUFFERED 1 

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app 
WORKDIR /app 
COPY ./app /app

# add user so that anyone can not access root user and mess up with our image
# so make user for security purpose.
# docker run image using username[user] and don't give root user
RUN adduser -D user
USER user


