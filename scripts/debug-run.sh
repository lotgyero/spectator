#!/usr/bin/env bash

WORK_PATH="`(dirname \"${0}\")`";
WORK_PATH="`( cd \"${WORK_PATH}/../\" && pwd )`";

. "${WORK_PATH}/scripts/lib.sh";

config_load;

function debug_run(){
    show_line_breacker "debug_run";
    "${WORK_PATH}/dist/spectator";
    show_exit_code "${?}"
    show_line_breacker "debug_run ${bldgrn}finish${txtrst}";
}

debug_run;
