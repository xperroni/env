# Custom environment variables for KDE plasma session
# Link to .config/plasma-workspace/env/env.sh

# Set / update DBUS environment variables
export $(dbus-launch)

# neovim-remote settings
# https://github.com/mhinz/neovim-remote
export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket

