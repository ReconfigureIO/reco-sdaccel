#!/bin/bash

sudo yum install -y openssh-server.x86-64
sudo sshd-keygen
sudo /sbin/sshd -D
