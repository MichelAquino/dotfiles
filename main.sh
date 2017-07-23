#!/bin/sh

/bin/bash scripts/install_packages.sh
/bin/bash scripts/install_golang.sh
/bin/bash scripts/install_dev_packages.sh

/bin/bash scripts/configure_user_permissions.sh
/bin/bash scripts/configure_ssh_keys.sh
/bin/bash scripts/configure_git.sh
/bin/bash scripts/configure_oh_my_zsh.sh
/bin/bash scripts/configure_vscode.sh