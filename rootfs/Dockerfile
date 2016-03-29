FROM heroku/cedar:14

RUN mkdir /app
RUN addgroup --quiet --gid 2000 slug && \
    useradd slug --uid=2000 --gid=2000 --home-dir /app --no-create-home \
        --shell /bin/bash
RUN chown slug:slug /app
WORKDIR /app

RUN apt-get update && apt-get install -y curl python libffi-dev
RUN curl -sSL https://raw.githubusercontent.com/pypa/pip/7.1.2/contrib/get-pip.py | python -
RUN pip install boto3==1.2.6
RUN pip install  gcloud==0.11.0
RUN pip install azure-storage==0.30.0

# add default port to expose (can be overridden)
ENV PORT 5000
EXPOSE 5000

ADD ./runner /runner
ADD ./bin /bin
RUN chown slug:slug /runner/init
RUN chown slug:slug /bin/get_object

USER slug
ENV HOME /app
ENTRYPOINT ["/runner/init"]

ENV DEIS_RELEASE 2.0.0-dev

ONBUILD RUN mkdir -p /app
ONBUILD WORKDIR /app
ONBUILD ADD slug.tgz /app
