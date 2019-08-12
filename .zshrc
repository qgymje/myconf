export ZSH=/Users/jimmychain/.oh-my-zsh

ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
export DEFAULT_USER=$(whoami)
alias vim="nvim"
#alias vim="mvim -v"
alias vs="cd /Users/jimmychain/Workspace/verystar"
alias hp="http_proxy=http://localhost:1087 https_proxy=http://localhost:1087"
alias npvs="no_proxy=git.verystar.cn"

alias dhp="unset http_proxy\ unset https_proxy"
alias hpp="echo http_proxy=http://localhost:1087 https_proxy=http://localhost:1087"
#alias php="/usr/local/bin/php"
#alias phpize="/usr/local/bin/phpize"

#export http_proxy=http://127.0.0.1:1087
#export https_proxy=http://127.0.0.1:1087

plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

#alias
alias cls="clear"
alias sz="source ~/.zshrc"
alias sc=sz

alias emacs="/usr/local/Cellar/emacs/25.3/bin/emacs"
#alias emacs="/usr/local/Cellar/emacs-plus/25.2_2/Emacs.app/Contents/MacOS/Emacs -nw"
#tmux
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8


#flutter
#export PATH=$PATH:~/Workspace/flutter/bin
export PATH=$PATH:$HOME/.cargo/bin

# Go
#export GO111MODULE=auto
export GOROOT=/usr/local/Cellar/go/1.12.5/libexec
#export GOCACHE=off
#export GOPROXY=http://127.0.0.1:1087
export GOBIN=~/go/bin
export GOARCH=amd64
export GOOS=darwin
export GOPATH=~/go
export DEF_GOPATH=~/go
#godoc之类工具
export PATH=$GOROOT/bin:$PATH
export PATH=$PATH:$GOBIN

alias gov="go version"
alias gob='go build'
alias gobl="GOOS=linux GOARCH=amd64 go build"
alias gobw="GOOS=windows GOARCH=386 go build"
alias got='go test -v '
alias gor='go run -race '


function gog()
{
    #eval `hp go get -u -v $1`
    eval `go get -u -v $1`
}


gop() {
    if [ "$1" = "" ]; then
    elif [ "$1" = "d" ]; then
        export GOPATH=`echo $DEF_GOPATH`
    elif [ "$1"  = "a" ]; then
        export GOPATH=`echo $DEF_GOPATH:$PWD`
    elif [ "$1" = "f" ];then
        export GOPATH=`pwd`
    fi

    echo "currnet GOPATH = "$GOPATH
}


alias golib='cd /Users/jimmychain/go/src/git.verystar.cn/golib'

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
   find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
      sed s/^..//) 2> /dev/null'
export PATH="/usr/local/opt/ruby/bin:$PATH"
