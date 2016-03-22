#!/bin/bash

set -e

if [ -z "${1:-}" ]; then
    echo "Aye! Forgot the argument?"
    echo "proxy : to show proxy servers."
    echo "env-proxy : to show proxy settings on the system."
    exit 1
fi

ACTION="$1"

if [ "$ACTION" == "proxy" ]; then
  echo "http_proxy=http://web-proxy.corp.hpecorp.net:8080/"
  echo "https_proxy=http://web-proxy.corp.hpecorp.net:8080/"
  echo "ftp_proxy=http://web-proxy.corp.hpecorp.net:8080/"
  exit 0
fi

if [ "$ACTION" == "env-proxy" ]; then
  echo "Showing proxy..."
  env | grep proxy
  exit 0
fi

echo "ZZzZzz..."
