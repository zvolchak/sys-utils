#!/bin/bash

set -e

if [ -z "${1:-}" ]; then
    exit 1
fi
ACTION="$1"

if [ -z "${2:-}" ]; then
    exit 1
fi
OBJECT="$2"

if [ "$ACTION" == "s" ]; then
    apt search -t jessie $OBJECT
fi

if [ "$ACTION" == "i" ]; then
    apt install -t jessie $OBJECT
fi

