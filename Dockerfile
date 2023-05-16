# Dockerfile

# pull the official docker image
FROM python:3.11.1-slim

# set work directory
WORKDIR /app

# set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install openai whisper 
RUN pip install -U openai-whisper
RUN apt update && apt install ffmpeg --assume-yes
RUN pip install setuptools-rust

# copy project
COPY . .

#run the app
CMD ["python", "main.py"]