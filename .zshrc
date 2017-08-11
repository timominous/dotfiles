export ZSH=/Users/timominous/.oh-my-zsh

ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git fasd z)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Aliases

alias zshconfig="vim ~/.zshrc"
alias dsubs="addic7ed -l english"

alias flattendir="find . -mindepth 1 -type f -exec mv '{}' . ';'"

# FASD

eval "$(fasd --init auto)"

# pyenv

eval "$(pyenv init -)"

# SSH Agent

eval "$(ssh-agent -s)"

# swiftenv

if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

export PATH="$PATH:/Users/timominous/awseb/eb/macosx/python2.7/"

DEFAULT_USER="timominous"

export NVM_DIR="/Users/timominous/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# In order for gpg to find gpg-agent, gpg-agent must be running, and there must be an env
# variable pointing GPG to the gpg-agent socket. This little script, which must be sourced
# in your shell's init script (ie, .bash_profile, .zshrc, whatever), will either start
# gpg-agent or set up the GPG_AGENT_INFO variable if it's already running.

# Add the following to your shell init to set up gpg-agent automatically for every shell
if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
    source ~/.gnupg/.gpg-agent-info
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi

# Load SSH keys here
