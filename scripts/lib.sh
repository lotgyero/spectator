#!/usr/bin/env bash

if [[ ! "${CLI_CONFIGURED_LIB}" ]];
then
    WORK_PATH="`(dirname \"${0}\")`";
    WORK_PATH="`( cd \"${WORK_PATH}/../\" && pwd )`";
    SCRIPTS_PATH="${WORK_PATH}/scripts.d";
    source "${SCRIPTS_PATH}/lib-path.sh";
    source "${SCRIPTS_PATH}/lib-functions.sh";
    source "${SCRIPTS_PATH}/lib-colors.sh";
    CLI_CONFIGURED_LIB="1";
fi
