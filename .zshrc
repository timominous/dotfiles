export ZSH=/Users/timominous/.oh-my-zsh

ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git fasd z zsh-syntax-highlighting zsh-autosuggestions)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Aliases

alias zshconfig="vim ~/.zshrc"
alias dsubs="addic7ed -l english"

alias flattendir="find . -mindepth 1 -type f -exec mv '{}' . ';'"

alias renametvshowsindir="filebot -rename * --format \"{n} - {s00e00} - {t}\" --db TheTVDB -non-strict"

alias dc="docker-compose"

alias sha1-check="shasum"
alias md5-check="md5"

alias ggv-env="/Users/timominous/Dropbox/Scripts/ggv-env.sh"
alias mtc="/Users/timominous/Dropbox/Scripts/mtc.sh"
alias ctl="/Users/timominous/Dropbox/Scripts/connect-to-local.sh"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# In order for gpg to find gpg-agent, gpg-agent must be running, and there must be an env
# variable pointing GPG to the gpg-agent socket. This little script, which must be sourced
# in your shell's init script (ie, .bash_profile, .zshrc, whatever), will either start
# gpg-agent or set up the GPG_AGENT_INFO variable if it's already running.

# Add the following to your shell init to set up gpg-agent automatically for every shell
if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
    source ~/.gnupg/.gpg-agent-info
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon ~/.gnupg/.gpg-agent-info)
fi

# Load SSH keys here
ssh-add -K ~/.ssh/id_rsa_gitlab
ssh-add -K ~/.ssh/id_rsa_github
ssh-add -K ~/.ssh/id_rsa_timduhay.com
ssh-add -K ~/.ssh/id_rsa_ggv
ssh-add -K ~/.ssh/id_rsa_ggv_api_layer

clear
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

[ -s "/Users/timominous/.jabba/jabba.sh" ] && source "/Users/timominous/.jabba/jabba.sh"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

export PATH="$HOME/Dropbox/Scripts:$PATH"

export AWS_SERIAL_NUMBER="arn:aws:iam::832596390793:mfa/tim.duhaylungsod@gogovan.co.kr"

export ANDROID_HOME=/Users/timominous/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH

export FASTLANE_PASSWORD="utos-izaw-aqzr-fxhk"
