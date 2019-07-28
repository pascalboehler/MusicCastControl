# To run:
# docker run -d --restart unless-stopped --net=host --name MusicCastControl-container MusicCastControl

FROM python:3
MAINTAINER Pascal Böhler "pascal.boehler@hotmail.de"

WORKDIR /usr/src/app

ADD https://github.com/pascalboehler/MusicCastControl/archive/master.tar.gz .
RUN gunzip -c master.tar.gz | tar xvf -

WORKDIR /usr/src/app/MusicCastControl-master

RUN pip install --no-cache-dir -r ./requirements.txt

CMD [ "python", "./MusicCastController.py" ]
