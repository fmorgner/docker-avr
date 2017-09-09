#!/bin/bash

set -e

PKGS=(avr-gcc avr-libc git make)

pacman -Syu --noconfirm ${PKGS[*]}
pacman -Scc --noconfirm
rm -r /usr/share/man/*
rm -r /usr/share/locale/*
