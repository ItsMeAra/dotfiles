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
# export PATH=/usr/local/bin:$PATH

# Add rbenv to bash so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# ###########################################################
# Aliases
# ###########################################################

## General
## #################################################

alias sub='open -a "Sublime Text"'
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
alias myip="curl http://ipecho.net/plain; echo"


## Shortcuts
## #################################################

alias editgit='st ~/.gitconfig'
alias editbash='st ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias sites='cd ~/Sites'
alias ghub='cd ~/Github-repos'
alias bbucket='cd ~/Bitbucket-repos'


## Git commands
## #################################################

alias glog='git log'
alias gdiff='git diff'
alias gbranch='git branch'
alias gstat='git status'
alias gfetch='git fetch'
alias gadd='git add -all'
alias gpush='git push origin head'
alias gpull='git pull'
# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"


### Git branch switching
### #######################################

alias master='git co master'
alias ghp='git co gh-pages'


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

# Empty the Trash on all mounted volumes and the main HDD. 
# then clear the useless sleepimage
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash; sudo rm /private/var/vm/sleepimage"

# Update installed Ruby gems, Homebrew, npm, and their 
# installed packages
alias brew_update="brew -v update; brew -v upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Updates brew, npm, gem
alias updateallthethings='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-rdoc --no-ri'

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

