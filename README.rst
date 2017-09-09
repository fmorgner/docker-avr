##########
Docker AVR
##########

This docker image provides a modern toolchain for building firmwares for Atmel
AVR microcontrollers. The image is based on Arch Linux and ships with an
up-to-date version of AVR GCC, supporting C++17.

This images was designed with CI environments like GitlabCI in mind. It includes
the following tools:

+ AVR GCC
+ AVR libc
+ Git
+ GNU Make

Installing Additional Tools
===========================

If you require additional tools for your application, you have to general
possibilities:

1. Fork this repository and adjust ``bootstrap.sh`` accordingly
2. Install the required packages in you CI script

Working with ``bootstrap.sh``
-----------------------------

The ``bootstrap.sh`` script is used by the ``Dockerfile`` to install the
components of this image. If you want to add more packages, you can simply add
them to the `PKGS` array.

Installing Tools from a CI Script
---------------------------------

Alternatively, you can install the software you require from within your CI
script. If you choose this approach, you can use a simple command line like this
one::

  $ pacman -Syu --noconfirm <package_names>

