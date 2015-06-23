FROM ubuntu:latest
MAINTAINER Scott Belden <scottabelden@gmail.com>

RUN apt-get update -y
RUN apt-get install -y python-software-properties software-properties-common
RUN apt-add-repository -y ppa:ubuntu-wine/ppa
RUN dpkg --add-architecture i386
RUN apt-get update -y

RUN apt-get install -y wget unzip wine1.7

ADD _setup.sh _setup.sh
ADD msvc9compiler.py msvc9compiler.py
RUN ./_setup.sh

ADD _run_pyinstaller.sh _run_pyinstaller.sh
CMD ["/bin/bash", "_run_pyinstaller.sh"]

