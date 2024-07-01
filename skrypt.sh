#!/bin/bash
if [ "$1" == "--date" ]; then
  date
fi
if [ "$1" == "--logs" ]; then
  num=100
  if [ -n "$2" ]; then
    num=$2
  fi
  for i in $(seq 1 $num); do
    echo "Log $i, created by $0 on $(date)" > log_$i.txt
  done
fi
