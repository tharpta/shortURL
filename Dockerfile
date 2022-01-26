FROM python:3.8-slim-buster

WORKDIR /shortURL
RUN  apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . . 
ENTRYPOINT [ "python" ]

CMD [ "python3", "-m" , "flask", "run"]