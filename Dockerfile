FROM abhiramk/basesshimage:1.2.2-develop-67d9277

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y docker.io


