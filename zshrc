# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/cuiyunpeng/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster_cyp"
# ZSH_THEME="dogenpunk"
# ZSH_THEME="pygmalion"
# ZSH_THEME="Soliah"
# ZSH_THEME="cyp"
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}
prompt_git() {
  (( $+commands[git] )) || return
  if [[ "$(git config --get oh-my-zsh.hide-status 2>/dev/null)" = 1 ]]; then
    return
  fi
  local PL_BRANCH_CHAR
  () {
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    PL_BRANCH_CHAR=$'\ue0a0'         # 
  }
  local ref dirty mode repo_path

   if [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ]]; then
    repo_path=$(git rev-parse --git-dir 2>/dev/null)
    dirty=$(parse_git_dirty)
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git rev-parse --short HEAD 2> /dev/null)"
    if [[ -n $dirty ]]; then
      prompt_segment null  yellow 
    else
      prompt_segment null yellow
    fi

    if [[ -e "${repo_path}/BISECT_LOG" ]]; then
      mode=" <B>"
    elif [[ -e "${repo_path}/MERGE_HEAD" ]]; then
      mode=" >M<"
    elif [[ -e "${repo_path}/rebase" || -e "${repo_path}/rebase-apply" || -e "${repo_path}/rebase-merge" || -e "${repo_path}/../.dotest" ]]; then
      mode=" >R>"
    fi

    setopt promptsubst
    autoload -Uz vcs_info

    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' get-revision true
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:*' stagedstr '✚  '
    zstyle ':vcs_info:*' unstagedstr '●  '
    zstyle ':vcs_info:*' formats ' %u%c'
    zstyle ':vcs_info:*' actionformats ' %u%c'
    vcs_info
    echo -n "${ref/refs\/heads\//$PL_BRANCH_CHAR } ${vcs_info_msg_0_%% }${mode}"
  fi
}

PROMPT='$(prompt_git)%{$fg[green]%}%m@%{$fg[magenta]%}%(?..%?%1v)%n:%{$reset_color%}%{$fg[cyan]%}%~#'
# PROMPT='%{$fg[green]%}%m@%{$fg[magenta]%}%(?..%?%1v)%n:%{$reset_color%}%{$fg[cyan]%}%~#'
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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# plugins=(git)
plugins=(
  zsh-syntax-highlighting
  git
  web-search
  extract
  wd
  # autojump
  # bundler
  # dotenv
  # osx
  # rake
  # rbenv
  # ruby
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
  # export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="$PATH:/usr/local/vim/bin"
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/cuiyunpeng/tools/anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
    # eval "$__conda_setup"
# else
    # if [ -f "/home/cuiyunpeng/tools/anaconda/etc/profile.d/conda.sh" ]; then
        # . "/home/cuiyunpeng/tools/anaconda/etc/profile.d/conda.sh"
    # else
        # export PATH="/home/cuiyunpeng/tools/anaconda/bin:$PATH"
    # fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
#
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/cuiyunpeng/tools/anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
   eval "$__conda_setup"
else
   if [ -f "/home/cuiyunpeng/tools/anaconda/etc/profile.d/conda.sh" ]; then
     . "/home/cuiyunpeng/tools/anaconda/etc/profile.d/conda.sh"
   else
     export PATH="/home/cuiyunpeng/tools/anaconda/bin:$PATH"
   fi
fi
unset __conda_setup
# <<< conda initialize <<<

# export PATH="/home/cuiyunpeng/tools/matlab/R2018b/bin:$PATH"
# anaconda config
# export LD_LIBRARY_PATH=/home/cuiyunpeng/tools/anaconda/lib:$LD_LIBRARY_PATH
# export LIBRARY_PATH=/home/cuiyunpeng/tools/anaconda/lib:$LIBRARY_PATH
# export CPLUS_INCLUDE_PATH="/home/cuiyunpeng/tools/anaconda/include/python3.7m:$CPLUS_INCLUDE_PATH"
if [ -f ~/.libs/gconfig ]; then
    . ~/.libs/gconfig
fi
if [ -f ~/.bash_bookdir ]; then
    . ~/.bash_bookdir
fi
[[ -s /home/cuiyunpeng/.autojump/etc/profile.d/autojump.sh ]] && source /home/cuiyunpeng/.autojump/etc/profile.d/autojump.sh

# 	autoload -U compinit && compinit -u

if [ -f ~/.libs/opencv_lib/opencv_lib ];then
  . ~/.libs/opencv_lib/opencv_lib
fi
if [ -f ~/.libs/cuda_lib/cuda_lib ];then
  . ~/.libs/cuda_lib/cuda_lib
fi
if [ -f ~/.libs/boost_lib/boost_lib ];then
  . ~/.libs/boost_lib/boost_lib
fi
if [ -f ~/.libs/protobuf_lib/protobuf_lib ];then
  . ~/.libs/protobuf_lib/protobuf_lib
fi
if [ -f ~/.libs/glob_lib/glob_lib ];then
  . ~/.libs/glob_lib/glob_lib
fi
if [ -f ~/.libs/glog_lib/glog_lib ];then
  . ~/.libs/glog_lib/glog_lib
fi
if [ -f ~/.libs/openBLAS_lib/openBLAS_lib ];then
  . ~/.libs/openBLAS_lib/openBLAS_lib
fi
if [ -f ~/.libs/lmdb_lib/lmdb_lib ];then
  . ~/.libs/lmdb_lib/lmdb_lib
fi
if [ -f ~/.libs/hdf5_lib/hdf5_lib ];then
  . ~/.libs/hdf5_lib/hdf5_lib
fi
if [ -f ~/.libs/snappy_lib/snappy_lib ];then
  . ~/.libs/snappy_lib/snappy_lib
fi
if [ -f ~/.libs/leveldb_lib/leveldb_lib ];then
  . ~/.libs/leveldb_lib/leveldb_lib
fi
if [ -f ~/.libs/matlab_lib/matlab_lib ];then
  . ~/.libs/matlab_lib/matlab_lib
fi
if [ -f ~/.libs/other_lib/other_lib ];then
  . ~/.libs/other_lib/other_lib
fi

