#!/usr/bin/env bash
current=$(cd `dirname $0` && pwd)
command="ssh
    -R :12345:127.0.0.1:8080 
    root@127.0.0.1
    -o 'StrictHostKeyChecking=no' 
    -o 'GatewayPorts=yes' 
    -o 'UserKnownHostsFile=/dev/null'
    -i $current/data/ssh_key 
    -p 2222 
    -N 
    "
echo $command
eval $command