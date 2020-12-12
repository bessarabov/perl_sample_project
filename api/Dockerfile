FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    curl \
    gcc \
    libperlio-gzip-perl \
    make \
    ;

RUN curl --silent https://raw.githubusercontent.com/miyagawa/cpanminus/1.9019/App-cpanminus/cpanm | perl - App::cpanminus
RUN cpanm Carton@v1.0.34

ADD cpanfile /app/
ADD cpanfile.snapshot /app/

WORKDIR /app
RUN carton install --deployment

ADD cmd /app/
ADD lib/ /app/lib/
ADD bin/ /app/bin/

CMD ./cmd
