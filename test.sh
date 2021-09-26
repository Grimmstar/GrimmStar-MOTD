#!/usr/bin/env bash

# Don't change! We want predictable outputs
export LANG="en_US.UTF-8"

# Dir of this scrip
export BASE_DIR="$(dirname "$(readlink -f "$0")")"

# Set config path
if [ -z ${1+x} ]; then
    export CONFIG_PATH="$BASE_DIR/config.sh"
else
    export CONFIG_PATH="$1"
fi

set -euo pipefail

hostname=${HOSTNAME:-$(hostname)}

printf "$(cat /home/cyriina/Projects/MOTD/modules/05-logo) \n"

printf "$(bash /home/cyriina/Projects/MOTD/modules/10-banner) \n"

printf "$(bash /home/cyriina/Projects/MOTD/modules/20-system) \n"

printf "$(bash /home/cyriina/Projects/MOTD/modules/30-disks) \n"

printf "$(bash /home/cyriina/Projects/MOTD/modules/40-services) \n"