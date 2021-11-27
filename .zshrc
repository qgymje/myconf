export ZSH=/Users/jimmychain/.oh-my-zsh

### theme
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

### plugins
plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"

### alias
export DEFAULT_USER=$(whoami)
#alias vim="nvim"
#alias vim="mvim -v"
alias vs="cd ~/Workspace/verystar"
alias qn="cd ~/Workspace/qiniu"
alias cls="clear"
alias sz="source ~/.zshrc"
alias sc=sz
alias py="python3"
alias k="kubectl"

### proxy
proxy_port=7890
alias hp="http_proxy=http://localhost:$proxy_port https_proxy=http://localhost:$proxy_port"
alias npvs="no_proxy=git.verystar.cn"
alias shp="export http_proxy=http://localhost:$proxy_port https_proxy=http://localhost:$proxy_port"

alias nohp="unset http_proxy;unset https_proxy"
alias hpp="echo http_proxy=http://localhost:$proxy_port https_proxy=http://localhost:$proxy_port"

### tmux
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8

### ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"


############
# Go
############
export GOCACHE=off go test
export GOPROXY=https://goproxy.cn,direct
export GONOPROXY=off
export GOSUMDB=off
export GOARCH=amd64
export GOOS=darwin
export GOBIN=~/Workspace/go/bin
export GOPATH=~/Workspace/go
#godoc之类工具
export PATH=$GOROOT/bin:$PATH
export PATH=$PATH:$GOBIN

alias gov="go version"
alias gob='go build'
alias gobl="GOOS=linux GOARCH=amd64 go build"
alias gobw="GOOS=windows GOARCH=386 go build"
alias got='go test -v '
alias gor='go run -race '
alias gog='GOFLAGS="-gcflags=-G=3"'

############
# Rust
############
export PATH=$PATH:$HOME/.cargo/bin

#########
# java
#########
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

#########
# scala
#########
export SBT_OPTS="$SBT_OPTS -Dhttp.proxyHost=127.0.0.1 -Dhttp.proxyPort=7890"


source $ZSH/oh-my-zsh.sh


