# Bash settings and simple extensions.
#
# (C) 2020 Helio Perroni Filho

# If not running interactively, don't do anything.
case $- in
    *i*) ;;
      *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1).
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Make less more friendly for non-text input files, see lesspipe(1).
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set a fancy prompt (non-color, overwrite the one in /etc/profile).
export PS1='[\u@\h:\W]\$ '

# Some useful aliases
alias ls='ls --color'
alias la='ls -a'
alias ll='ls -lh'
alias vim='nvr --remote'

# Add an "alert" alias for long running commands. Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Function for creating a new folder and immediately entering it.
function nudir {
  mkdir -p $1
  cd $1
}

# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Extend default application search path.
export PATH="$PATH:$HOME/env/bin"

# Set kate as the editor invoked by sudoedit.
export SUDO_EDITOR='kate -b'

# Run machine-specific configuration file if it exists.
if [ -f $HOME/.local/user.bashrc ]
then
  source $HOME/.local/user.bashrc
fi
