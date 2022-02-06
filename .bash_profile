# Set encoding
export LC_ALL="en_US"
export LANG="$LC_ALL"
export BROWSER="/usr/local/bin/surf"

# Load custom ENV variables to be read by scripts
BASH_ENV="$HOME/.bashrc"

# Source usr .bashrc if it exists
if [ -f "$BASH_ENV" ]; then
    . $BASH_ENV
fi
