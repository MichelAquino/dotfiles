#!/bin/sh

/bin/bash scripts/add_repositories.sh
/bin/bash scripts/install_packages.sh

# /bin/bash scripts/install_golang.sh

/bin/bash scripts/configure_oh_my_zsh.sh
/bin/bash scripts/configure_vscode.sh