# base python docker image
FROM python:3.9-bullseye

# adding the files into docker directory
ADD . /app

# changing to the directory
WORKDIR /app

# install required libraries
RUN pip install flask

# exposing the port
EXPOSE 5001

# running the main program
CMD python app.py