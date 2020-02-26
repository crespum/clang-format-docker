FROM teeks99/clang-ubuntu:9
MAINTAINER Xabier Crespo <x.crespo@scrobotics.es>

ADD run-clang-format/run-clang-format.py /usr/bin

RUN chmod +x /usr/bin/run-clang-format.py && \
  mkdir /src && \
  ln -s /usr/bin/clang-format-9 /usr/bin/clang-format
WORKDIR /src
