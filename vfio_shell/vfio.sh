#!/bin/bash

#arg1 : vfio-pci-bind.sh path(ex: /root/vfio-pci-bind.sh)
#arg2 : VenderID:ProductID
#arg3 : PCI Address

#exec example : ./vfio.sh /root/vfio-pci-bind.sh 10de:1e78 0000:af:00.0 

while [ true ]
do
  cmd="$1 $2 $3"
  exec $cmd

  output=$($cmd | grep already)

  if [ -n "$output" ]
  then 
    exit 1
  else
    echo ""
  fi
  sleep 5
done
