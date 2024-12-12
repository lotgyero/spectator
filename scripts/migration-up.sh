#!/usr/bin/env bash

WORK_PATH="`(dirname \"${0}\")`";
WORK_PATH="`( cd \"${WORK_PATH}/../\" && pwd )`";

. "${WORK_PATH}/scripts/lib.sh";

config_load;

function migrate_up(){
    show_line_breacker "migration run";
    migrate -database ${POSTGRESQL_URL} -path db/migrations up;
    show_exit_code "${?}"
    show_line_breacker "migration ${bldgrn}finish${txtrst}";
}

migrate_up;
