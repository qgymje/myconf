export ZSH=/Users/jimmychain/.oh-my-zsh

ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
export DEFAULT_USER=$(whoami)
#alias vim="nvim"
#alias vim="mvim -v"
alias vs="cd /Users/jimmychain/Workspace/verystar"

proxy_port=7890
alias hp="http_proxy=http://localhost:$proxy_port https_proxy=http://localhost:$proxy_port"
alias npvs="no_proxy=git.verystar.cn"
alias shp="export http_proxy=http://localhost:$proxy_port https_proxy=http://localhost:$proxy_port"

alias nohp="unset http_proxy;unset https_proxy"
alias hpp="echo http_proxy=http://localhost:$proxy_port https_proxy=http://localhost:$proxy_port"


plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

#alias
alias cls="clear"
alias sz="source ~/.zshrc"
alias sc=sz

#alias emacs="/usr/local/bin/emacs-26.3"
alias emacs="/usr/local/Cellar/emacs-plus/26.3/Emacs.app/Contents/MacOS/Emacs -nw"
#tmux
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8


############
# Rust
############
export PATH=$PATH:$HOME/.cargo/bin

############
# Go
############
#export GO111MODULE=auto
export GOROOT=/usr/local/Cellar/go/1.14.5/libexec
#export GOCACHE=off go test
export GOPROXY=https://goproxy.cn,direct
export GONOPROXY=off
export GOSUMDB=off
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

#########
# python
#########
#export PATH=~/opt/anaconda3/bin:$PATH

#########
# scala
#########
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.6.jdk/Contents/Home
export SBT_OPTS="$SBT_OPTS -Dhttp.proxyHost=127.0.0.1 -Dhttp.proxyPort=7890"


source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"


export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
   find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
      sed s/^..//) 2> /dev/null'
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
