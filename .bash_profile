# For git, also drop these into the command line to make sure 
# pulling and pushing work properly:
# git config --global pull.default current
# git config --global user.name "dhg"
# git config --global user.email "dhgamache@gmail.com"


export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

## Tools
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .' 

## Shortcuts
alias editbash='subl ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias jekyllserver='jekyll serve --baseurl ""'

## Directories
alias skeleton='cd ~/Dropbox/Projects/skeleton/code/Skeleton && branch'
alias voxel='cd ~/Dropbox/Projects/voxel/code/voxelsite && branch'

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias gmghp='git merge gh-pages'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Git branch switching
checkoutFunction() {
  git checkout $1
}
alias master='git co master'
alias ghp='git co gh-pages'
alias co=checkoutFunction

## Allows git autocomplete (http://code-worrier.com/blog/autocomplete-git/)
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

## Server quick starts
alias py='python -m SimpleHTTPServer'

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'