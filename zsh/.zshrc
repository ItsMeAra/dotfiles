# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/aabcarians/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# ###########################################################
# Functions
# ###########################################################

## Make directory then cd into it.


# ###########################################################
# Aliases
# ###########################################################

## General
## #################################################

alias home="cd ~/"
alias ll="ls -lhA"
alias ls="ls -CF"
alias ..="cd .."
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias myip="curl http://ipecho.net/plain; echo"
alias c='clear'
alias cprsa='pbcopy < ~/.ssh/id_rsa.pub'


## Shortcuts
## #################################################

alias edit_git='atom ~/.gitconfig'
alias edit_bash='atom ~/.bash_profile'
alias resource='source ~/.zshrc && source ~/.zshenv && echo "All done master Bruce!"'
alias sites='cd ~/Sites'
alias ghub='cd ~/Github'
alias bbucket='cd ~/Bitbucket'
alias mdocs='cd /Applications/MAMP/htdocs/'


## Git commands
## #################################################

alias newbranch='git checkout -b'
alias delbranch='git branch -d'
alias namebranch='git branch -m'
alias gstat='git status'
alias gf='git fetch'
alias gadd='git add --all'
alias gcom='git commit -am'
alias gaddcom='git add . && git commit -am'
alias gpush='git push origin head'
alias gpull='git pull origin head'
alias gpmast='git push origin master'
alias gplmast='git pull origin master'
alias gmerge='git merge --no-ff'
alias co='check out'
# Undo a `git push`
alias fml="git push -f origin HEAD^:master"
alias fuckit="git reset --hard"
alias updatemaster='git checkout master && gplmast'

# To delete all local branches that are already merged into the currently
# checked out branch:
alias clbranches='git branch --merged | grep -v "\*" | grep -v master | grep -v develop | xargs -n 1 git branch -d'

# To delete all local branches that are already merged into master:
alias clbranchesmaster='git branch --merged master | grep -v "^\*\|  master" | xargs -n 1 git branch -d'

# To delete all branches on remote that are already merged:
alias clbranchesremote='git branch -r --merged | grep -v master | sed "s/origin\///" | xargs -n 1 git push --delete origin'


### Git branch switching
### #######################################

alias gomaster='git checkout master'
alias ghp='git checkout gh-pages'
alias gitback='git checkout -'


## Server guick starts
## #################################################

alias js='jekyll serve --watch'


## Misc
## #################################################

# Update installed Ruby gems, Homebrew, npm, and their
# installed packages
alias brewup="brew -v update; brew -v upgrade; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Updates brew, npm, gem
# alias updateall='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-rdoc --no-ri'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update_errthang='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Recursively delete `.DS_Store` files
alias byeds="find . -name '*.DS_Store' -type f -ls -delete && echo 'All done master Bruce!'"

# Empty the Trash on all mounted volumes and the main HDD.
# then clear the useless sleepimage
alias garbageday="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash; sudo rm /private/var/vm/sleepimage"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias trashday="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# export PATH="$HOME/.gem/ruby/3.0.2/bin:$PATH"
