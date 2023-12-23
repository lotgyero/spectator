#!/usr/bin/env bash

WORK_PATH="`(dirname \"${0}\")`";
WORK_PATH="`( cd \"${WORK_PATH}/../\" && pwd )`";

. "${WORK_PATH}/scripts/lib.sh";

config_load;

function migrate_create(){
    local MIGRATION_SCHEME_NAME="${1}";
    show_line_breacker "migration run";
    # migrate -database ${POSTGRESQL_URL} -path db/migrations down;
    migrate create -ext psql -seq -digits 14 -dir db/migrations "${MIGRATION_SCHEME_NAME}";
    show_exit_code "${?}"
    show_line_breacker "migration ${bldgrn}finish${txtrst}";
}

MIGRATE_NAME="${1}"

migrate_create "${MIGRATE_NAME}";
