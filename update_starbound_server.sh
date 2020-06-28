#!/bin/bash
STEAMUSER=$1
${STEAMCMDPATH}/steamcmd.sh \
    +login $STEAMUSER \
    +force_install_dir ${STARBOUNDPATH} \
    +app_update 211820 validate +quit
