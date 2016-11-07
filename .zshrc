export ZSH=/Users/timominous/.oh-my-zsh

ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Aliases

alias zshconfig="vim ~/.zshrc"
alias dsubs="addic7ed -l english"

# FASD

eval "$(fasd --init auto)"

# rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

export PATH="$PATH:/Users/timominous/awseb/eb/macosx/python2.7/"

DEFAULT_USER="timominous"

export NVM_DIR="/Users/timominous/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
