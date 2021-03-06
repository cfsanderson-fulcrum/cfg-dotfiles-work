#===============================================================================
#                                     __             
#                         ____  _____/ /_  __________
#                        /_  / / ___/ __ \/ ___/ ___/
#                         / /_(__  ) / / / /  / /__  
#                        /___/____/_/ /_/_/   \___/  
#                        
#===============================================================================
#                               @cfsanderson

# Aliases moved to ~/.oh-my-zsh/custom/aliases.zsh and accessible with "confalias" alias.

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export ANDROID_HOME=$HOME/Library/Android/sdk
export AWS_PROFILE=chaos
export DOCKER_PG=1
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$PATH
export ZSH=$HOME/.oh-my-zsh

source $HOME/Configs/tokens/.github-homebrew-token

ZSH_THEME="agnoster"

HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/history

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

chaos() {
  unset AWS_PROFILE
  export AWS_PROFILE=chaos
  unset AWS_DEFAULT_REGION
  export AWS_DEFAULT_REGION=us-east-2
  saml2aws login -p $AWS_PROFILE --role="arn:aws:iam::280296955917:role/standard" --skip-prompt
  aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 833023401363.dkr.ecr.us-east-1.amazonaws.com
}

plugins=(
    git 
    npm 
    osx 
    vi-mode 
    web-search 
    zsh-completions
    zsh-syntax-highlighting
    asdf
)

# source $HOME/.bash_profile
source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/id_rsa"

. $(brew --prefix asdf)/asdf.sh
# . /usr/local/opt/asdf/asdf.sh
# . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

export PATH="/usr/local/sbin:$PATH"
neofetch --ascii $HOME/.config/neofetch/lord-vader.txt
