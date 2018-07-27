#!/bin/sh

/bin/bash scripts/install_base_packages.sh
/bin/bash scripts/add_repositories.sh
/bin/bash scripts/install_golang.sh
/bin/bash scripts/install_dev_packages.sh
/bin/bash scripts/install_tools_packages.sh

/bin/bash scripts/configure_ssh_keys.sh
/bin/bash scripts/configure_git.sh
/bin/bash scripts/configure_oh_my_zsh.sh
/bin/bash scripts/configure_vscode.sh
/bin/bash scripts/configure_tmux.sh
/bin/bash scripts/configure_alias.sh
/bin/bash scripts/configure_vim.sh
