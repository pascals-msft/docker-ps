# docker-ps
Dockerfile for PowerShell in a Linux container

First, get the package:

wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb

or:

curl -OL https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb

Then, get the Dockerfile file and build the Docker image. For instance with a "powershelldemo" tag:

docker build -t powershelldemo .

Test the image with a container:

docker run --rm -it powershelldemo

...et voilà!
