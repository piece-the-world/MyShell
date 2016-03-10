#!/bin/bash

LOG_DIR=/var/log
ROOT_UID=0
E_XCD=86
E_NOTROOT=87

if [ "$UID" -ne "$ROOT_UID" ];then
  echo "must be root to run this script";
  exit $E_NOTROOT
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ];then
  echo "cannot change to $LOG_DIR";
  exit $E_XCD
fi

cat /dev/null > messages
cat /dev/null > wtmp
exit 0
