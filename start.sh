#!/usr/bin/env sh

/usr/bin/ssh-keygen -A
ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key

/usr/sbin/sshd -D