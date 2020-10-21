FROM okcontainers/python3-nose2:latest
WORKDIR /tmp


RUN apt-get update --yes
RUN apt-get install apt-transport-https ca-certificates --yes
RUN echo 'deb https://cran.microsoft.com/snapshot/2019-12-01/bin/linux/debian jessie-cran35/'  | tee -a /etc/apt/sources.list
RUN apt-get update --yes
RUN apt-get install gfortran r-base --force-yes --yes
