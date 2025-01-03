# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# ZVM_LINE_INIT_MODE=$ZVM_MODE_NORMAL
# ZVM_INIT_MODE=sourcing
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dstufft"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	docker
	kubectl
	vi-mode
	fzf
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'
# DISABLE_AUTO_UPDATE="true"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
# [ -s "$HOME/nvm_script.sh" ] && \. "$HOME/nvm_script.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH="$HOME/.local/bin:$PATH"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$PATH:/opt/mssql-tools/bin"i
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export GOPATH=$HOME/go
export PATH="$GOPATH:$PATH"
export GOBIN=$(go env GOPATH)/bin
export PATH=$PATH:$GOBIN
export PATH="$PATH:/opt/mssql-tools/bin"
export ORACLE_HOME=$HOME/Downloads/instantclient_21_7
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME
alias ll='ls -rtlaFsh'
alias lg='lazygit'
alias cpprogress='rsync -ahP '
export NODE_OPTIONS="--max-old-space-size=8192"
bindkey '^H' backward-kill-word
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
alias vim='nvim'
alias vi='nvim'
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# export GOOGLE_APPLICATION_CREDENTIALS="/Users/ozankoksal/google-creds.json"
export PIP_EXTRA_INDEX_URL=https://pypi.org/simple
# >>> coursier install directory >>>
export PATH="$PATH:/Users/ozankoksal/Library/Application Support/Coursier/bin"
export GEMBIN="/home/ozank/.local/share/gem/ruby/3.3.0/bin"
export PATH="$PATH:$GEMBIN"


# <<< coursier install directory <<<
export NVIM_APPNAME="nvim-kickstart"

alias mk="minikube"
alias mkd="minikube dashboard"
alias mkc="minikube kubectl --"
alias kc="kubectl"

[ -s "$HOME/env_script.sh" ] && \. "$HOME/env_script.sh"  # This loads nvm
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

lfcd () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}
alias lf="lfcd"
alias dcu="docker compose up"
alias dcd="docker compose down"


PATH="/home/ozank/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ozank/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ozank/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ozank/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ozank/perl5"; export PERL_MM_OPT;
