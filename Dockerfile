FROM debian:stretch

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y python python-pip

RUN pip install psycopg2-binary requests

COPY . /spectrum-wrangler
WORKDIR /spectrum-wrangler

CMD echo "waiting 10 seconds to allow postgres server to come up" && \
    sleep 10 && \
    echo "running load.py, this may take a few hours..." && \
    python load.py