#!/bin/bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

touch "$HOME/.tmux.conf"
{
    echo "# List of plugins"
    echo "set -g @plugin 'tmux-plugins/tpm'"
    echo "set -g @plugin 'tmux-plugins/tmux-sensible'"
    echo "set -g @plugin 'tmux-plugins/tmux-resurrect'"
    echo "set -g @plugin 'tmux-plugins/tmux-continuum'"
    echo ""
    echo "# Other examples:"
    echo "# set -g @plugin 'github_username/plugin_name'"
    echo "# set -g @plugin 'git@github.com/user/plugin'"
    echo "# set -g @plugin 'git@bitbucket.com/user/plugin'"
    echo ""
    echo "# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)"
    echo "run '~/.tmux/plugins/tpm/tpm'"
} >> "$HOME/.tmux.conf"

tmux source ~/.tmux.conf

