alias traceroute='mtr'
alias top='htop'
alias wfind='find . -name'
alias vi='subl'
alias md5sum='md5'

alias agibbons='knife cookbook upload agibbons;sudo chef-client;source ~/.bashrc'

alias log=gl
alias gl='git log --pretty=format:"%h %ce %s" --graph'
alias gb='git branch -v'
alias checkout='checkout'
alias commit='commit'
alias pull='git pull'
alias gd='git difftool'
alias gt='git fetch --tags'

function checkout () { git checkout -b "$1"; git push origin "$1"; }
function commit () { git commit -am "$*" ; git push; }

alias ga='git add'
alias gp='git push'
alias gs='git status'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gcb='checkout'

alias pm='cd ~/dev/svn/bpmeta/pmaster'

# Development aliases

# alias expunge='vagrant destroy;knife client -y delete precise64;knife node -y delete precise64; vagrant up'

export EDITOR='subl -w'