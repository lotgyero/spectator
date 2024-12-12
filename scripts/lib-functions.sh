#!/usr/bin/env bash


if [[ "${CLI_CONFIGURED_FUNCTION}" -ne 1 ]]
then
    source "${SCRIPTS_PATH}/lib-colors.sh";
    source "${SCRIPTS_PATH}/lib-path.sh";

    function show_line_breacker(){
        local STUB_DATA=""
        if [ -z ${1+x} ] ;
        then
            local STUB_DATA="--|  |--";
        else
            local STUB_DATA="--| ${1} |--";
        fi
        echo "[ `date` ] ${STUB_DATA}";
    }

    function env_load_from_path(){
        local FILE_PATH="${1}";

        local FILES=($(find  "${FILE_PATH}" -type f -regex  ".*\/[0-9][0-9]-.*\.env$" | sort -V -k1 ));

        for FILE_ENV in ${FILES[*]}
        do
            show_line_breacker "${bldylw}load${txtrst} ${bldgrn}$(basename ${FILE_ENV})${txtrst}";
            source "${FILE_ENV}";
        done
    }


    function config_load(){
        show_line_breacker "config_load";
        env_load_from_path "${CONFIG_PATH}";
        show_line_breacker "config_load ${bldgrn}finish${txtrst}";
    }

    function show_exit_code(){
        local EXIT_CODE=${1};
        local EXIT_TEXT="";

        if [ ${EXIT_CODE} -eq 0 ]
        then
            local EXIT_TEXT="${bldgrn}exit: 0${txtrst}";
        else
            local EXIT_TEXT="${bldred}exit: ${EXIT_CODE}${txtrst}";
        fi
        show_line_breacker "${EXIT_TEXT}";
    }

    CLI_CONFIGURED_FUNCTION="1";
fi
