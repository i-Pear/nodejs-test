FROM archlinux:latest

# ENV HTTP_PROXY=http://114.212.81.91:7890 HTTPS_PROXY=http://114.212.81.91:7890
RUN pacman -Syyu --noconfirm

RUN mkdir /packages && mkdir /nodejs && mkdir /pack
COPY toolchains/*.zst /packages/
COPY toolchains/lty-g++ /usr/bin/lty-g++
COPY nodejs.Makefile /nodejs/Makefile
COPY packed_node_deps.mri /pack

RUN pacman -S --noconfirm make wget python3 gcc
RUN pacman -U /packages/*.zst --noconfirm
RUN cd /nodejs && make

RUN cd /output && ar -M < /pack/packed_node_deps.mri
RUN cp /nodejs/node-v18.17.1/out/Release/obj.target/node_text_start/src/large_pages/node_text_start.o /pack
RUN cp /nodejs/node-v18.17.1/out/Release/obj.target/node/src/node_main.o /pack
RUN cp /nodejs/node-v18.17.1/out/Release/obj.target/node/gen/node_snapshot.o /pack
