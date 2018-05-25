#Oh-My-ZSH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
COMPLETION_WAITING_DOTS="true"
plugins=(brew zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh

# User configuration
eval "$(rbenv init -)"
fpath=(/usr/local/share/zsh-completions $fpath)
export EDITOR=/usr/local/bin/vim
export VISUAL=/usr/local/bin/vim
export LESS=eFRX

# Aliases
alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"
# Bundler aliases
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
# System aliases
alias showHidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideHidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
