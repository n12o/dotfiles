## Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=500
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word

## Alias section 
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias lg='lazygit'
alias fzpac="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias fzman="man -k . | fzf --prompt='Man> ' | awk '{print $1}' | xargs -r man"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# enable substitution for prompt
setopt prompt_subst

ZSH_TMUX_AUTOSTART=true

# load zgen
source "/usr/share/zsh/share/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/fzf
  zgen oh-my-zsh plugins/color-man-pages
  zgen oh-my-zsh plugins/vi-mode
  zgen oh-my-zsh plugins/fd
  zgen oh-my-zsh plugins/ripgrep
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/git-prompt

  zgen load n12o/zsh-aliases-exa 
  zgen load denysdovhan/spaceship-prompt spaceship
  zgen load urbainvaes/fzf-marks

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-history-substring-search
  # generate the init script from plugins above
  zgen save
fi

