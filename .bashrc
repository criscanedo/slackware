# Load the system-wide environment
source /etc/profile

# Set environment variables
export VISUAL="vim"
export EDITOR="vim"
export PATH="$PATH:/usr/sbin:/usr/local/sbin:/sbin:/home/hackexe/bin"
export CPATH="/usr/include"
export CPLUS_INCLUDE_PATH="/usr/include/c++/11.2.0"
export NICK="hackerexecute"
export BIN_DIR="$HOME/bin"
export VAR_DIR="$HOME/var"
export SRC_DIR="$HOME/src"
export LOG_DIR="$VAR_DIR/log"
export DOCS_DIR="$HOME/docs"
export DOWNLOADS_DIR="$HOME/downloads"
export PICTURES_DIR="$HOME/pictures"
export SCREENSHOTS_DIR="$PICTURES_DIR/screenshots"
export MUSIC_DIR="$HOME/music"
export VIDEOS_DIR="$HOME/videos"
export SCREENCASTS_DIR="$VIDEOS_DIR/screencasts"
export LYNX_SAVE_SPACE="$DOWNLOADS_DIR"

# Create directories
if [ ! -d "$BIN_DIR" ]; then
	mkdir $BIN_DIR
fi
if [ ! -d "$VAR_DIR" ]; then
	mkdir $VAR_DIR
fi
if [ ! -d "$SRC_DIR" ]; then
	mkdir $SRC_DIR
fi
if [ ! -d "$LOG_DIR" ]; then
	mkdir $LOG_DIR
fi
if [ ! -d "$LOG_DIR/kirc" ]; then
	mkdir $LOG_DIR/kirc
fi
if [ ! -d "$LOG_DIR/kirc/dalnet" ]; then
	mkdir $LOG_DIR/kirc/dalnet
fi
if [ ! -d "$LOG_DIR/kirc/oftc" ]; then
	mkdir $LOG_DIR/kirc/oftc
fi
if [ ! -d "$DOCS_DIR" ]; then
	mkdir $DOCS_DIR
fi
if [ ! -d "$DOWNLOADS_DIR" ]; then
	mkdir $DOWNLOADS_DIR
fi
if [ ! -d "$PICTURES_DIR" ]; then
	mkdir $PICTURES_DIR
fi
if [ ! -d "$SCREENSHOTS_DIR" ]; then
	mkdir $SCREENSHOTS_DIR
fi
if [ ! -d "$MUSIC_DIR" ]; then
	mkdir $MUSIC_DIR
fi
if [ ! -d "$VIDEOS_DIR" ]; then
	mkdir $VIDEOS_DIR
fi
if [ ! -d "$SCREENCASTS_DIR" ]; then
	mkdir $SCREENCASTS_DIR
fi

# Set temp variables
bin="$BIN_DIR"
var="$VAR_DIR"
src="$SRC_DIR"
logs="$LOG_DIR"
docs="$DOCS_DIR"
dls="$DOWNLOADS_DIR"
pics="$PICTURES_DIR"
screenshots="$SCREENSHOTS_DIR"
music="$MUSIC_DIR"
vids="$VIDEOS_DIR"
screencasts="$SCREENCASTS_DIR"
bashrc="$HOME/.bashrc"
bashalias="$HOME/.bash_aliases"
bashprofile="$HOME/.bash_profile"

# Configure the CDPATH variable to include frequently visited directories
CDPATH=$CDPATH:~/src

# Define foreground variables
P_BLACK="\[$(tput setaf 0)\]"
P_RED="\[$(tput setaf 1)\]"
P_GREEN="\[$(tput setaf 2)\]"
P_YELLOW="\[$(tput setaf 3)\]"
P_BLUE="\[$(tput setaf 4)\]"
P_MAGNETA="\[$(tput setaf 5)\]"
P_CYAN="\[$(tput setaf 6)\]"
P_WHITE="\[$(tput setaf 7)\]"
P_RESET="\[$(tput sgr0)\]"

# Configure prompt
export PS1="$P_GREEN\u$P_RED@$P_GREEN\h:$P_CYAN\w$P_WHITE\\$ $P_RESET"

# Load aliases
aliases="$HOME/.bash_aliases"
if [ -f $aliases ]; then
	source $aliases
fi

# Functions
dalnetpass() {
	pass show irc/oftc
}

oftcpass() {
	pass show irc/oftc
}

bmatrixpass() {
	pass show irc/channels/bitmatrix
}

# Export functions
export -f dalnetpass
export -f oftcpass
export -f bmatrixpass
