PS1='\[\e[92m\]\u\[\e[39m\]:\[\e[34m\]\W\[\e[39m\]\$ '

alias ll='ls -lGa'
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias reload='source ~/.bash_profile

export EDITOR=vim
export GOPATH=~/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
