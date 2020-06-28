FROM ubuntu:18.04
ENV STEAMCMDPATH /steamcmd
ENV STARBOUNDPATH /starbound
ENV STEAMUSER spunky10
VOLUME ${STARBOUNDPATH}
RUN apt-get update \
    && apt-get install -y wget lib32gcc1 libvorbisfile3 
RUN mkdir ${STEAMCMDPATH}
WORKDIR ${STEAMCMDPATH}
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
    && tar -zxvf steamcmd_linux.tar.gz \
    && ls
RUN ./steamcmd.sh +login ${STEAMUSER} +force_install_dir ${STARBOUNDPATH} +app_update 211820 validate +quit
