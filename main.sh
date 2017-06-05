#!/bin/sh

/bin/bash scripts/set_source_list.sh
/bin/bash scripts/add_repositories.sh
/bin/bash scripts/install_packages.sh
/bin/bash scripts/configure_zsh.sh
/bin/bash scripts/install_golang.sh