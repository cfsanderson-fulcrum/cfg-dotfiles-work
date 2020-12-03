#===============================================================================
#                 ____                     __                         
#           _____/ __/________ _____  ____/ /__  ______________  ____ 
#          / ___/ /_/ ___/ __ `/ __ \/ __  / _ \/ ___/ ___/ __ \/ __ \
#         / /__/ __(__  ) /_/ / / / / /_/ /  __/ /  (__  ) /_/ / / / /
#         \___/_/ /____/\__,_/_/ /_/\__,_/\___/_/  /____/\____/_/ /_/ 
#                                                                     
#                                    __             
#                        ____  _____/ /_  __________
#                       /_  / / ___/ __ \/ ___/ ___/
#                        / /_(__  ) / / / /  / /__  
#                       /___/____/_/ /_/_/   \___/  
#                       
#===============================================================================


if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export ZSH=/Users/caleb/.oh-my-zsh
export ANDROID_HOME=/Users/caleb/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$PATH
export DOCKER_PG=1
export HOMEBREW_GITHUB_API_TOKEN=$HOME/.config/homebrew-github-api-token

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

alias androiddebug='cd ~/Projects/fulcrum-android && ./gradlew runDebugApp'
alias androidphone='cd ~/Projects/fulcrum-android && emulator -avd Pixel_2_API_29 -netdelay none -netspeed full'
alias androidtab='cd ~/Projects/fulcrum-android && emulator -avd Samsung_Tab_A_7_API_29 -netdelay none -netspeed full'
alias bbd='brew bundle dump -f'
alias brave='open -a "Brave Browser"'
alias c='clear'
alias conf='/usr/bin/git --git-dir=/Users/caleb/.cfg-dotfiles/ --work-tree=/Users/caleb'
alias confbrowse='open -a "Brave Browser" https://github.com/cfsanderson-fulcrum/cfg-dotfiles-work'
alias confstat='conf status'
alias conflog='conf log'
alias confloga='conf log --oneline --decorate --graph --all'
alias chrome='open -a "Google Chrome"'
alias debug='./gradlew runDebugApp'
alias firefox='open -a "Firefox"'
alias gs='git switch'
alias home='~ && ls -la'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias ios='cd ~/Projects/fulcrum-ios && open Fulcrum.xcworkspace'
alias localhost='open -a "Brave Browser" http://localhost:3000/'
alias lsa='ls -a'
alias lsl='ls -l'
alias myhub='open https://github.com/cfsanderson-fulcrum' 
alias preview='open -a Preview'
alias notes='cd ~/Projects/.notes && nvim .'
alias sasswatch='sass --watch scss:css --style compressed'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sourcezsh='source ~/Configs/zsh/.zshrc'
alias sourcevim='source ~/.config/nvim/init.vim'
alias st='speedtest'
alias timez='date "+EST: %H:%M" && TZ=America/Chicago date "+CST: %H:%M" && TZ=America/Denver date "+MST: %H:%M" && TZ=America/Los_Angeles date "+PST: %H:%M"'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && vim "$1"
}
alias tp='trash-put'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias vim='nvim'
alias writer='cd /Users/caleb/Library/Mobile\ Documents/27N4MQEA55~pro~writer/Documents && code .'
alias zshrc='nvim ~/Configs/zsh/.zshrc'

. $(brew --prefix asdf)/asdf.sh
# . /usr/local/opt/asdf/asdf.sh
# . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
export PATH="/usr/local/sbin:$PATH"
