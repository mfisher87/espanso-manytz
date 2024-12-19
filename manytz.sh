#!/bin/bash
set -euo pipefail

if [ -z "${1:-}" ]; then
    echo "Please pass a valid time (e.g. '5:00 PM')."
    exit 1
fi
INPUT="${1}"

declare -a OUTPUT_TIMEZONES=("America/Los_Angeles" "America/Denver" "America/Chicago")
CURRENT_TZ="$(date +%Z)"

OUTPUT=""
for target_tz in ${OUTPUT_TIMEZONES[@]}; do
    converted=$(TZ="${target_tz}" date --date="TZ=\"${CURRENT_TZ}\" $INPUT" +%-I:%M\ %p\ %Z)

    if [ -n "$OUTPUT" ]; then
        OUTPUT+=" | "
    fi
    OUTPUT+="${converted}"
done

echo $OUTPUT
