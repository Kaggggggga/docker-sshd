#!/usr/bin/env sh

## generate host key
/usr/bin/ssh-keygen -A
yes y | ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key -N ""

## generate client key
if [ ! -z "$SSH_GEN_CLIENT_KEY" ]; then
    yes y | ssh-keygen -t rsa -b 4096 -f  /root/.ssh/id_rsa -N ""
    echo "" >>  /root/.ssh/authorized_keys
    cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
fi
syslogd
/usr/sbin/sshd -D
