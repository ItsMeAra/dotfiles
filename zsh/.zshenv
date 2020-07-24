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

export PATH=/Applications/MAMP/bin/php/php7.2.8/bin:$PATH

# Sometimes setting the global Ruby version with rbenv doesn't work.
# This fixes that.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="/Users/aabcarians/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
