# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/js/.oh-my-zsh
  
# Path for Ruby and Rubygems
export PATH=/home/js/.gem/ruby/2.4.0/bin:$PATH

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=2

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_CA.UTF-8

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

# workaround for vmware startup
export VMWARE_USE_SHIPPED_LIBS='yes'

<<<<<<< HEAD
# exports
export VISUAL=vim
export EDITOR="$VISUAL"
LD_LIBRARY_PATH=/usr/lib/libboost_thread.so.1.63.0

=======
>>>>>>> fee013187a8bc0019b170b8c66dc37a06e3c23c2
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias wific='sudo wpa_supplicant -B -i net0 -c /etc/wpa_supplicant/example.conf'
alias mp='ncmpcpp'
alias gc='git clone'
alias gp='git push -u origin master'
alias gs='git status'
alias ga='git add --all'
alias msf="msfconsole --quiet -x \"db_connect postgres@msf\""
alias pw='cat /etc/passwords |grep'
<<<<<<< HEAD
alias xev='xev | awk -F'\''[ )]+'\'' '\''/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'\'''
alias vmfix='sudo vmware-modconfig --console --install-all'
alias vpn='~/files/programs/bash/vpn.sh'
alias sss='scrot -s'
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias v='vim'
alias rmd='recordmydesktop --device pulse --v_bitrate 2000000'
alias extip='curl ipinfo.io/ip'
alias rmorphans='sudo pacman -Rns $(pacman -Qtdq)'
alias temps='/home/js/files/programs/bash/tempToggle.sh'
=======
>>>>>>> fee013187a8bc0019b170b8c66dc37a06e3c23c2
PS1=' %{$fg[green]%}js (%~) =>%{$reset_color%} $(git_prompt_info)'
cd ~
