FROM ubuntu:18.04
ENV STEAMCMDPATH /steamcmd
ENV STARBOUNDPATH /starbound
RUN mkdir ${STARBOUNDPATH}
RUN mkdir ${STEAMCMDPATH}
WORKDIR ${STEAMCMDPATH}
RUN apt-get update \
    && apt-get install -y wget lib32gcc1 libvorbisfile3 
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
    && tar -zxvf steamcmd_linux.tar.gz \
    && ./steamcmd.sh +quit
COPY update_starbound_server.sh ${STEAMCMDPATH}
