#!/usr/bin/env bash
set -o errexit
set -o pipefail
[[ "${DEBUG}" == 'true' ]] && set -o xtrace

#This script needs admin rights to complete
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

#Set up env variables
HOMEIDS_INSTALL=$(pwd)/install
HOMEIDS_RESOURCES=$(pwd)/resources
