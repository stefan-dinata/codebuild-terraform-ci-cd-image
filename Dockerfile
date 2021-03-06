FROM ubuntu:xenial
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    jq \
    python \
    python-pip \
    unzip \
    wget \
    zip \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install --upgrade awscli
RUN pip install boto3
RUN pip install cryptography
RUN pip install PyJWT
RUN pip install requests
COPY scripts/ /usr/local/bin/
