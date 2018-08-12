FROM debian:stretch

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y python python-pip

RUN pip install psycopg2-binary requests

COPY . /spectrum-wrangler
WORKDIR /spectrum-wrangler

ENTRYPOINT /spectrum-wrangler/entrypoint.sh