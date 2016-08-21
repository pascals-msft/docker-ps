FROM ubuntu:xenial
MAINTAINER Pascal Sauliere <pascals@microsoft.com>

# use wget or curl -OL to get the package:
# https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb

ENV PACKAGE powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb

RUN apt-get update && apt-get install -y \
  libunwind8 \
  libicu55

ADD $PACKAGE .

RUN dpkg -i ./$PACKAGE \
  && rm ./$PACKAGE

ENTRYPOINT ["powershell"]
