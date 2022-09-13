while [ true ]
do
  cmd="/root/vfio-pci-bind.sh $1 $2"
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
