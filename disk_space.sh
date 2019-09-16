#script to check disk space
#!/bin/sh
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $usep -ge 20 ]; then
    echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
  fi
done
