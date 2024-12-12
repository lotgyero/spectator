#!/usr/bin/env bash

if [[ "${CLI_CONFIGURED_PATH}" -ne 1 ]]
then
    CONFIG_PATH="${WORK_PATH}/.config";
    DIST_PATH="${WORK_PATH}/dist";
    CLI_CONFIGURED_PATH="1";
fi
