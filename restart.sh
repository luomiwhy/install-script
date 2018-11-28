#!/bin/bash
while true; do
  pid=`ps -ef |grep xxxx |grep -v grep |awk '{print $2}'`
  if [ -n "$pid" ]; then
    kill -15 $pid
    echo "The java process is exiting, it may take some time, forcing the exit may cause damage to the database, please wait patiently..."
    sleep 1
  else
    echo "java process killed successfully!"
    break
  fi
done

xxxxxxxxxx

