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
if [ "$1" == "--help" ]; then
  echo "Available options:"
  echo "--date: Displays the current date"
  echo "--logs [number]: Creates [number] log files"
  echo "--help: Displays this help message"
fi
if [ "$1" == "-d" ]; then
  date
fi
if [ "$1" == "-l" ]; then
  num=100
  if [ -n "$2" ]; then
    num=$2
  fi
  for i in $(seq 1 $num); do
    echo "Log $i, created by $0 on $(date)" > log_$i.txt
  done
fi
if [ "$1" == "-h" ]; then
  echo "Available options:"
  echo "--date, -d: Displays the current date"
  echo "--logs [number], -l [number]: Creates [number] log files"
  echo "--help, -h: Displays this help message"
fi
