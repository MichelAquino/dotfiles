#!/bin/sh

/bin/bash linux/install_base_packages.sh
/bin/bash linux/install_zsh.sh
/bin/bash linux/add_repositories.sh
/bin/bash linux/install_dev_packages.sh
/bin/bash linux/install_golang.sh
/bin/bash linux/install_go_packages.sh
/bin/bash linux/install_tools.sh
/bin/bash linux/install_emacs.sh
/bin/bash linux/install_python.sh

/bin/bash linux/configure_ssh_keys.sh
/bin/bash linux/configure_git.sh
/bin/bash linux/configure_tmux.sh
