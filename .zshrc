# Path to your oh-my-zsh installation.
export ZSH=/Users/jimmychain/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
export DEFAULT_USER=$(whoami)

alias vim="nvim"
alias vi="nvim"

alias qgm="cd /Users/jimmychain/Workspace/Go/src/github.com/qgymje"
alias vs="cd /Users/jimmychain/Workspace/verystar"

alias hp="http_proxy=http://localhost:8123"
#export http_proxy=http://127.0.0.1:8123

#export https_proxy=https://127.0.0.1:12948

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

#alias
alias cls="clear"
alias sz="source ~/.zshrc"
alias sc=sz

function gog()
{
    eval `go get -u -v $1`
#alias gg="go get -v -u "

}
#alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs="/usr/local/Cellar/emacs-plus/24.5/Emacs.app/Contents/MacOS/Emacs -nw"

#tmux
export TERM=xterm-256color

# Go
export GOROOT=/usr/local/Cellar/go/1.8.3/libexec
export GOBIN=~/Workspace/GO/bin
#export GOROOT=/usr/local/go
export GOARCH=amd64
export GOOS=darwin
export GOPATH=~/Workspace/GO
export DEF_GOPATH=~/Workspace/GO
#godoc之类工具
#export PATH=$PATH:/usr/local/Cellar/go/1.5/bin
export PATH=$GOROOT/bin:$PATH
export PATH=$PATH:~/Workspace/Go/bin

alias gv="go version"
alias gopp='echo $GOPATH'
alias gopf='export GOPATH=`pwd` && echo $GOPATH'
alias gopa='export GOPATH=`echo $DEF_GOPATH`:`pwd` && echo $GOPATH'
alias gopd='export GOPATH=`echo $DEF_GOPATH` && echo $GOPATH'
alias gob='go build'
alias gor='cd $GOROOT'

gop() {
    if [ "$1" = "" ]; then
    elif [ "$1" = "d" ]; then
        export GOPATH=`echo $DEF_GOPATH`
    elif [ "$1"  = "a" ]; then
        export GOPATH=`echo $DEF_GOPATH`:`pwd`
    elif [ "$1" = "f" ];then
        export GOPATH=`pwd`
    fi

    echo "currnet GOPATH = "$GOPATH
}
#rustup
export PATH=$PATH:~/.cargo/bin
#composer
export PATH=$PATH:~/.composer/vendor/bin

#pyenv
export PATH=~/.pyenv/shims:$PATH

#elixir
#mix
alias mt='mix test'

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#developemnt
export CHINARUN_API_SERVER_MODE=development
export CHINARUN_WANBISAI_MODE=development
export CHINARUN_HERMES_MODE=development
export CHINARUN_ACHILLES_MODE=development
export CHIANRUN_PHOTOSERVERS_MODE=development

# etcd
export ETCDCTL_API=3

#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#source ~/.oh-my-zsh/plugins/zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically.
#zle-line-init() {
#    zle autosuggest-start
#}
#zle -N zle-line-init
#
