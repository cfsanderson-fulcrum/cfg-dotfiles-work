#01100011 01100110 01110011 01100001 01101110 01100100 01100101 01110010 01110011 01101111 01101110 
#                           __                     _                           
#                          / _|                   | |                          
#                      ___| |_ ___  __ _ _ __   __| | ___ _ __ ___  ___  _ __  
#                     / __|  _/ __|/ _` | '_ \ / _` |/ _ \ '__/ __|/ _ \| '_ \ 
#                    | (__| | \__ \ (_| | | | | (_| |  __/ |  \__ \ (_) | | | |
#                     \___|_| |___/\__,_|_| |_|\__,_|\___|_|  |___/\___/|_| |_|
#
#
#01100011 01100110 01110011 01100001 01101110 01100100 01100101 01110010 01110011 01101111 01101110 
#==============================              WORK - SNI              ==============================
#==================================================================================================
export ZSH=/Users/caleb/.oh-my-zsh
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export PATH=$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/emulator:$PATH

ZSH_THEME=amuse

HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(
    git 
    npm 
    osx 
    vi-mode 
    web-search 
    zsh-syntax-highlighting
)

source $HOME/.bash_profile
source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/id_rsa"

alias bbd='brew bundle dump -f'
alias c='clear'
alias conf='/usr/bin/git --git-dir=/Users/caleb/.cfg-dotfiles/ --work-tree=/Users/caleb'
alias confstat='conf status'
alias conflog='conf log'
alias confloga='conf log --oneline --decorate --graph --all'
alias fulcrum='cd ~/Projects/fulcrum && open fulcrum.code-workspace && open -a "Google Chrome" http://localhost:3000/ && ./start'
alias fulcrumvim='cd ~/Projects/fulcrum && vim . && open -a "Google Chrome" http://localhost:3000/ && ./start'
alias fulcrumapp='cd ~/Projects/fulcrumapp.com && code . && ./start'
alias gohome='~ && ls -la'
alias gs='git switch'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias jsfast='bundle exec jekyll serve --watch --limit_posts 1'
alias jsslow='make clean && bundle exec jekyll serve --watch --config _config_dev.yml --incremental --future'
alias lsa='ls -a'
alias lsl='ls -l'
alias myhub='open https://github.com/cfsanderson'
alias notes='cd ~/Projects/NOTES && vim .'
alias sasswatch='sass --watch scss:css --style compressed'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sni='cd ~/Projects/spatialnetworks.com && code .'
alias sourcezsh='source ~/Configs/zsh/.zshrc'
alias st='speedtest'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && open "$1"
}
alias tp='trash-put'
alias vimrc='vim ~/.vimrc'
alias writer='cd /Users/caleb/Library/Mobile\ Documents/27N4MQEA55~pro~writer/Documents && code .'
alias zshrc='vim ~/Configs/zsh/.zshrc'

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
export PATH="/usr/local/sbin:$PATH"