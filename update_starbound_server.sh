#!/bin/bash
${STEAMCMDPATH}/steamcmd.sh \
    +login $STEAMUSER $STEAMPASSWORD \
    +force_install_dir ${STARBOUNDPATH} \
    +app_update 211820 validate +quit
