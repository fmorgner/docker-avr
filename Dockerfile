FROM finalduty/archlinux:daily
LABEL maintainer="felix.morgner@gmail.com" description="An Arch Linux based image for building AVR firmwares"

ADD bootstrap.sh /
RUN /bootstrap.sh
