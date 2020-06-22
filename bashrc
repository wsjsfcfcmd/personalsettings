PS1='\[\033[01;31m\]\u@\h:\[\033[01;33m\]\w\$\[\033[00m\] '
export DISPLAY=:0
alias sudo='sudo -E'
alias mkvenv='mkvirtualenv'
alias leave='deactivate'
alias mkdir='mkdir -m 775'
alias ll='ls -alh --color=auto'

#docker related
alias do-syspr='docker system prune'
alias do-volpr='docker volume prune'
alias doc-u='docker-compose up'
alias doc-ub='docker-compose up --build'
alias do-bash='_(){ docker exec -it $1 bash; }; _'
alias do-sh='_(){ docker exec -it $1 sh; }; _'
alias do-imgs='docker images'
alias do-ps='docker container ps -a'

alias grepw='grep . -rwne'
alias grepnw='grep . -rne'
alias his='history'
alias hisgrep='history | grep'
alias scp2w='_(){ scp $1 $2 $3 $4 $5 wsl:/d/scp ; }; _'
alias scp2c='_(){ scp wsl:/d/scp/$1 wsl:/d/scp/$2 wsl:/d/scp/$3 wsl:/d/scp/$4 wsl:/d/scp/$5 . ; }; _'
alias helmdry='_(){ helm install dry $1 --dry-run > dry-run.yaml; }; _'
alias pipcp='pip-compile requirements.in --output-file=./requirements.txt'
alias pipir='pip install -r requirements.txt'
alias redis='redis-cli -h 10.196.12.215'
alias mysql='workon meg; mycli -u root -pXXXXXXXX  -h 10.196.12.215;'
alias unsetaws='unset AWS_ACCESS_KEY_ID; unset AWS_SECRET_ACCESS_KEY; unset AWS_DEFAULT_REGION'

TERM=screen-256color
export GOPATH=/home/wby/gopath
export GOROOT=/usr/local/go
export GOBIN=/home/wby/gopath/bin
export GO111MODULE=on
export PATH=~/.local/bin:/usr/bin:/bin:/usr/sbin:$GOPATH/bin:$GOROOT/bin:/home/wby/.yarn/bin
#if [ -f `which powerline-daemon` ]; then
#  powerline-daemon -q
#  POWERLINE_BASH_CONTINUATION=1
#  POWERLINE_BASH_SELECT=1
#  . /home/wby/.local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
#fi
stty -ixon
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/home/wby/.local/bin/virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace

export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTIGNORE="ls:ps:history"

source ~/.local/bin/virtualenvwrapper.sh
complete -C /usr/bin/terraform terraform
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
