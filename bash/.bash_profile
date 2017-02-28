# In case you feel like moving all of this to .bashrc,
# uncomment this:
#
# if [ -f ~/.bashrc ]; then
#    source ~/.bashrc
# fi
#
# Shorthand:
# [[ -r ~/.bashrc ]] && . ~/.bashrc


# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
#
# for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
#     [ -r "$file" ] && source "$file"
# done
# unset file



# ###########################################################
# Functions
# ###########################################################

## Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Shows what changed/added files from your branch compared to master
# Usage:
# $ daChanges myBranch
daChanges() {
    git diff --name-status master..$1
}

## Make directory then cd into it.
mcd () {
    mkdir -p $1
    cd $1
}



# ###########################################################
# Exports
# ###########################################################

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}
export PATH=/usr/local/bin:$PATH

# Sometimes setting the global Ruby version with rbenv doesn't work.
# This fixes that.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"



# ###########################################################
# Aliases
# ###########################################################

## General
## #################################################

alias sub='open -a "Sublime Text"'
alias opnatom='open -a "Atom"'
alias home="cd ~/"
alias ll="ls -lhA"
alias ls="ls -CF"
alias ..="cd .."
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias mkdir="mkdir -pv"
alias wget="wget -c"
# alias myip="curl http://ipecho.net/plain; echo"
alias c='clear'
alias cprsa='pbcopy < ~/.ssh/id_rsa.pub'


## Shortcuts
## #################################################

alias edit_git='atom ~/.gitconfig'
alias edit_bash='atom ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "All done master Bruce!"'
alias sites='cd ~/Sites'
alias ghub='cd ~/Github'
alias bbucket='cd ~/Bitbucket'
alias mdocs='cd /Applications/MAMP/htdocs/'


## Git commands
## #################################################

alias glog='git log'
alias gdiff='git diff'
alias gbr='git branch'
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
# alias co='check out'
# Undo a `git push`
alias fml="git push -f origin HEAD^:master"
alias fuckit="git reset --hard"
alias update_master='git checkout master && gplmast'

# To delete all local branches that are already merged into the currently
# checked out branch:
alias clean_branches='git branch --merged | grep -v "\*" | grep -v master | grep -v develop | xargs -n 1 git branch -d'

# To delete all local branches that are already merged into master:
alias clean_branches_master='git branch --merged master | grep -v "^\*\|  master" | xargs -n 1 git branch -d'

# To delete all branches on remote that are already merged:
alias clean_branches_remote='git branch -r --merged | grep -v master | sed "s/origin\///" | xargs -n 1 git push --delete origin'


### Git branch switching
### #######################################

alias master='git checkout master'
alias ghp='git checkout gh-pages'
alias gitback='git checkout -'


## Server guick starts
## #################################################

alias js='jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'


## Mobile iOS testing
## #################################################

alias ios='open /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'


## Misc
## #################################################

# `cat` with beautiful colors. requires: sudo easy_install -U Pygments
alias pcat='pygmentize -O style=monokai -f console256 -g'

# Update installed Ruby gems, Homebrew, npm, and their
# installed packages
alias brew_update="brew -v update; brew -v upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Updates brew, npm, gem
# alias updateallthethings='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-rdoc --no-ri'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update_errthang='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete && echo 'All done master Bruce!'"

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off && echo 'Spotlight is off master Bruce!'"

# Enable Spotlight
alias spoton="sudo mdutil -a -i on && echo 'Spotlight is on master Bruce!'"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Empty the Trash on all mounted volumes and the main HDD.
# then clear the useless sleepimage
alias empty_trash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash; sudo rm /private/var/vm/sleepimage"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias secure_empty_trash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"



# ###########################################################
# Other Stuff
# ###########################################################

# Add rbenv to bash so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
