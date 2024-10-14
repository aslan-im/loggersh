#!/usr/bin/env bash

logger () {
    local message
    local level
    local timestamp

    message=$1
    # info is a default level
    level=${2:-"info"}
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")

    echo "${timestamp} [$level] - $message"

    if [[ "$level" == "error" ]]; then
        exit 1
    fi
}
