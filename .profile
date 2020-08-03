export QT_QPA_PLATFORMTHEME="qt5ct"

# emacsclient
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -create-frame --alternate-editor=\"\""

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox-developer-edition
export TERMINAL=/usr/bin/alacritty

# Go
export GOPATH=$HOME/go

# Path
export PATH=$PATH:$HOME/go/bin:$GOROOT/bin:$HOME/bin:$HOME/.emacs.d/bin
