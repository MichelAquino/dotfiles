#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "michelaquino@mailbox.org"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa