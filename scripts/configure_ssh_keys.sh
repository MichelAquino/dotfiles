#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "michel.has@gmail.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa