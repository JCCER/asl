#!/system/bin/sh

MODDIR=${0%/*}

echo asl > /data/asl/log/asl.log

/data/asl/bin/asl --sshd start
