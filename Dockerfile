FROM python:3-alpine
COPY . /repo
RUN apk add --no-cache git gcc libxml2-dev musl-dev libxslt-dev g++ re2-dev \
 && ln -s /usr/include/libxml2/libxml /usr/include/libxml \
 && pip3 install /repo \
 && rm -rf /repo
ENV PYTHONUNBUFFERED=1
WORKDIR /data
ENTRYPOINT ["snscrape"]
