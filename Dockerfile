FROM archlinux:latest

ENV HTTP_PROXY=http://114.212.81.91:7890 HTTPS_PROXY=http://114.212.81.91:7890
RUN pacman -Syyu --noconfirm

RUN mkdir /packages && mkdir /nodejs
COPY *.zst /packages/
COPY nodejs.Makefile /nodejs/Makefile
COPY lty-g++ /usr/bin/lty-g++

RUN pacman -S --noconfirm make wget python3 gcc
RUN pacman -U /packages/*.zst --noconfirm
RUN cd /nodejs && make
