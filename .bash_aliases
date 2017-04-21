######################## Profiles and aliases #############################
alias aliases='vim ~/.bash_aliases'
alias palias='cat ~/.bash_aliases'
alias salias='source ~/.bash_aliases'

alias bashpro='vim ~/.bash_profile'
alias sbashpro='source ~/.bash_profile'
alias cbashpro='cat ~/.bash_profile'

alias pro='vim ~/.profile'
alias spro='source ~/.profile'
alias cpro='cat ~/.profile'

alias bashfun='vim ~/.bash_functions'
alias cbashfun='cat ~/.bash_functions'
alias sbashfun='source ~/.bash_functions'

alias gfig='vim ~/.gitconfig'
alias cgfig='cat ~/.gitconfig'

alias gitpro='vim /etc/profile.d/git-prompt.sh'
alias cgitpro='cat /etc/profile.d/git-prompt.sh'
######################## Profiles and aliases #############################

################### Version Control Shortcuts #############################
alias gl='git log --oneline  --graph --decorate --remotes --branches --tags -n 25 --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' $*'
alias gls='git log --oneline -n 15 --graph --decorate  $*'
alias gpom='git push origin master'
################### Version Control Shortcuts #############################

################### Misc Shortcuts #############################
alias chicago='curl -s http://wttr.in/Chicago'
alias gopi='ssh pi@24.148.94.117'
alias ls='ls --color'
alias hide='ls -d .* --color'
alias ...='cd ../../'
alias ..='cd ..'
alias ....='cd ../../..'

# Windows Only
alias getkey='clip < ~/.ssh/id_rsa.pub'
################### Misc Shortcuts #############################
