FROM python:3.10

ARG TEST 

ENV TEST $TEST

COPY docker-entrypoint.sh .
COPY test_app.py .

RUN apt-get update && \
    apt-get install -y vim  && \
    if [ -z "$TEST" ]; then echo "no test" ; fi && \
    if [ ! -z "$TEST"  ]; then echo "test $TEST" ; fi && \
    if [ ! -z "$TEST"  ]; then pip install --no-cache-dir pytest; fi && \
    pip install numpy

EXPOSE 8000

ENTRYPOINT ["./docker-entrypoint.sh"]
