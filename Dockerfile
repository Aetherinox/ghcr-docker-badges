FROM python:3.12.6

ARG VERSION
ENV VERSION=${VERSION:-main}

RUN pip install --upgrade pip
RUN python --version
RUN python -m pip install git+https://github.com/Aetherinox/ghcr-docker-badges@$VERSION

ENTRYPOINT ["badges-ghcr-server"]
