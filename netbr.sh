#!/bin/bash

set -u

print_help(){
  echo
  echo "ls"
  echo "e [arg1]"
  echo "dest [arg1]"
  echo "def [arg1]"
  echo "undef [arg1]"
  echo "start [arg1]"
  echo "re-start [to-start] [to-destroy]"
  echo "re-conf [arg1] [xml file]"
  echo
}

if [ -z "${1:-}" ]; then
  echo "Say Whaaaaaat?"
  print_help
  exit 1
fi

OPT=$1

if [ "${2:-}" ]; then
    arg1=$2
fi

if [ "${3:-}" ]; then
    arg2=$3
fi
isError=0

case $OPT in
    ls|l|ll)
        echo
        sudo brctl show
        echo
    ;;
    e)
        sudo virsh net-edit $arg1
    ;;
    dest)
       sudo virsh net-destroy $arg1
    ;;
    def)
       sudo virsh net-define $arg1
    ;;
    undef)
        sudo virsh net-undefine $arg1
    ;;
    start)
       sudo virsh net-start $arg1
    ;;
    re-start)
        sudo virsh net-destroy $arg2
        sudo virsh net-start $arg1
    ;;
    re-conf)
        sudo virsh net-destroy $arg1
        sudo virsh net-undefine $arg1
        sudo virsh net-define $arg2
        sudo virsh net-list --all
    ;;
    *)
    isError=1
    echo "I Understood NOTHING!"
    print_help
    ;;
esac

if [ $isError == 0 ]; then
    sudo virsh net-list --all
fi
