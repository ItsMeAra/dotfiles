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

alias resource='source ~/.zshrc && source ~/.zshenv && echo "All done master Bruce!"'
alias sites='cd ~/Sites'
alias pjects='cd ~/Projects'
alias mdocs='cd /Applications/MAMP/htdocs/'


## Git commands
## #################################################

alias newbranch='git checkout -b'
alias delbranch='git branch -d'
alias namebranch='git branch -m'
alias gstat='git status'
alias gfetch='git fetch'
alias gadd='git add --all'
alias gcom='git commit -am'
alias gaddcom='git add . && git commit -am'
alias gpush='git push origin head'
alias gpull='git pull origin head'
alias gpushmain='git push origin main'
alias gpullmain='git pull origin main'
alias gpushmaster='git push origin master'
alias gpullmaster='git pull origin master'
alias gmerge='git merge --no-ff'
alias gco='git check out'

# Undo a `git push`
alias fmlmain="git push -f origin HEAD^:main"
alias fmlmaster="git push -f origin HEAD^:master"
alias fuckit="git reset --hard"
alias updatemain='git checkout main && gpullmain'
alias updatemaster='git checkout master && gpullmaster'

# To delete all local branches that are already merged into the currently
# checked out branch:
alias clbranchesmain='git branch --merged | grep -v "\*" | grep -v main | grep -v develop | xargs -n 1 git branch -d'
alias clbranchesmaster='git branch --merged | grep -v "\*" | grep -v master | grep -v develop | xargs -n 1 git branch -d'

# To delete all local branches that are already merged into master:
alias clbranchesmaster='git branch --merged master | grep -v "^\*\|  master" | xargs -n 1 git branch -d'
alias clbranchesmain='git branch --merged main | grep -v "^\*\|  main" | xargs -n 1 git branch -d'

# To delete all branches on remote that are already merged:
alias clbranchesremotemaster='git branch -r --merged | grep -v master | sed "s/origin\///" | xargs -n 1 git push --delete origin'
alias clbranchesremotemain='git branch -r --merged | grep -v main | sed "s/origin\///" | xargs -n 1 git push --delete origin'


### Git branch switching
### #######################################

alias gomaster='git checkout master'
alias gomain='git checkout main'
alias gopages='git checkout gh-pages'
alias gitback='git checkout -'


## Misc
## #################################################

# Update installed Ruby gems, Homebrew, npm, and their
# installed packages
alias brewup="brew -v update; brew -v upgrade; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Updates brew, npm, gem
# alias updateall='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-rdoc --no-ri'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias updateall='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; npm install -g npm@latest; npm update -g; sudo gem update --system; sudo gem update'

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

