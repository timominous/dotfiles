export ZSH=/Users/timominous/.oh-my-zsh

ZSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
DEFAULT_USER="timominous"

plugins=(git fasd z zsh-syntax-highlighting)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

##### Aliases

alias zshconfig="vim ~/.zshrc"
alias sha1-check="shasum"
alias md5-check="md5"
alias ggv-env="/Users/timominous/Dropbox/Scripts/ggv-env.sh"
alias mtc="/Users/timominous/Dropbox/Scripts/mtc.sh"
alias ctl="/Users/timominous/Dropbox/Scripts/connect-to-local.sh"

##### FASD
eval "$(fasd --init auto)"

##### pyenv
eval "$(pyenv init -)"

##### SSH Agent
# eval "$(ssh-agent -s)"

####################
# Version Managers #
####################

##### swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

##### rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

##### Jabba
[ -s "/Users/timominous/.jabba/jabba.sh" ] && source "/Users/timominous/.jabba/jabba.sh"

##### AWS
export PATH="$PATH:/Users/timominous/awseb/eb/macosx/python2.7/"
export AWS_SERIAL_NUMBER="arn:aws:iam::832596390793:mfa/tim.duhaylungsod@gogovan.co.kr"

##### NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

##### Nodenv
eval "$(nodenv init -)"

########
# Misc #
########

##### Load SSH keys here
ssh-add -q -K ~/.ssh/id_rsa_gitlab
ssh-add -q -K ~/.ssh/id_rsa_github
ssh-add -q -K ~/.ssh/id_rsa_timduhay.com
ssh-add -q -K ~/.ssh/id_rsa_ggv
ssh-add -q -K ~/.ssh/id_rsa_ggv_api_layer

##### OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

##### Custom scripts
export PATH="$HOME/Dropbox/Scripts:$PATH"

##### Android
export ANDROID_HOME=/Users/timominous/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

export GPG_TTY=$(tty)

function mitoken() {
  readonly token=${1:?"Token required"}
  echo "0: $token" | xxd -r -p | openssl enc -d -aes-128-ecb -nopad -nosalt -K 00000000000000000000000000000000
}

export PATH="$HOME/.poetry/bin:$PATH"
