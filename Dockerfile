FROM python:3-alpine
RUN apk add --no-cache git gcc libxml2-dev musl-dev libxslt-dev g++ re2-dev \
 && ln -s /usr/include/libxml2/libxml /usr/include/libxml \
 && pip3 install git+https://github.com/JustAnotherArchivist/snscrape.git
ENV PYTHONUNBUFFERED=1
WORKDIR /data
ENTRYPOINT ["snscrape"]
