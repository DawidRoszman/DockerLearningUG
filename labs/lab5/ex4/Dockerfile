FROM alpine

ARG PYTHON_VERSION
ARG PORT

ENV PYTHON_VER=${PYTHON_VERSION}
ENV PORT=${PORT}

RUN apk add --no-cache python${PYTHON_VER} py3-pip
# https://pkgs.org/ <- można sprawdzić jakie wersje są dostępne
EXPOSE ${PORT}

WORKDIR /app
COPY ./myapp /app
VOLUME /app

RUN python3 -m venv venv && \
    venv/bin/pip install -r requirements.txt

CMD venv/bin/uvicorn app:app --reload --port ${PORT} --host 0.0.0.0

