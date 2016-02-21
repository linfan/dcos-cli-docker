#!/bin/bash
if [ "${1}" = "--pkg-update" ]; then
    /dcos-cli/bin/dcos package update
    shift
fi
/bin/bash /dcos-cli/config.sh
/dcos-cli/bin/dcos "$@"
