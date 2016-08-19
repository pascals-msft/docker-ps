FROM ubuntu:xenial
MAINTAINER Pascal Sauliere <pascals@microsoft.com>

RUN apt-get update && apt-get install -y \
  libunwind8 \
  libicu55

# use wget or curl -OL to get the package:
# https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb

ADD powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb .

RUN dpkg -i ./powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb \
  && rm ./powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb

ENTRYPOINT powershell
