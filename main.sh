#!/bin/sh

/bin/bash linux/install/install_base_packages.sh
/bin/bash linux/install/add_repositories.sh
/bin/bash linux/install/install_golang.sh
/bin/bash linux/install_go_dependencies.sh
/bin/bash linux/install/install_dev_packages.sh
/bin/bash linux/install/install_tools_packages.sh

/bin/bash linux/config/configure_ssh_keys.sh
/bin/bash linux/config/configure_git.sh
/bin/bash linux/config/configure_oh_my_zsh.sh
/bin/bash linux/config/configure_vscode.sh
/bin/bash linux/config/configure_tmux.sh
/bin/bash linux/config/configure_alias.sh
