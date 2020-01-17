## Work
alias adfs_login='aws-adfs login --adfs-host=sts.encoretix.co.uk --region=eu-west-1 --profile encoretix-master'

# System
alias editbash='code ~/.bash_profile'
alias sourcebash='source ~/.bash_profile'
alias c='clear'
alias cl='clear && ls'
alias cla='clear && ls -a'
#alias code='open -a "Visual Studio Code"'

## Ruby and Rails
alias restartrail='touch tmp/restart.txt'
alias br='bundle exec rails'
alias beg='bundle exec guard'
alias brs='bundle exec rails server'
alias bgn='bundle exec rails generate'
alias brk='bundle exec rake' 
alias bi='bundle install'
alias edit_creds='rails credentials:edit'
export EDITOR="code --wait"
alias aka='echo "
            br        bundle exec rails
            brs        bundle exec rails server
            bgn        bundle exec rails generate
            brk        bundle exec rake
            bi        bundle install
         "'
export EDITOR="code --wait"
alias python='/usr/local/bin/python3'
## Docker
alias docker_stop_all='docker stop $(docker ps -a -q)'
alias docker_kill_all='docker kill $(docker ps -q)'
alias docker_rm_all='docker rmi $(docker images -q)'
alias dc-build='docker-compose -f docker-compose.yml up --b'
alias dc-up='docker-compose -f docker-compose.yml up'
alias dc-down='docker-compose -f docker-compose.yml down'
alias gctb="git add . && git commit -m $1 && git tag $2 && git push && \
            git push origin $2 && \
            docker build -t giftbit-fe:$2 . && \
            docker tag giftbit-fe:$2 registry.sonictexture.co.uk/giftbit-fe:$2 && \
            docker push registry.sonictexture.co.uk/giftbit-fe:$2"
alias gcp="git add . && git commit -m $1 && git push"
alias dreg="docker login -u docker_reg https://registry.sonictexture.co.uk"


function chrome() {
    open $@ --args --allow-file-access-from-files
}
source ~/.git-prompt.sh

eval "$(direnv hook bash)"

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GRAY="\[\033[0;37m\]"

GIT_PS1_SHOWDIRTYSTATE=true
PS1="$LIGHT_GRAY[\$(date +%H:%M) - \u@\h] $RED\w$YELLOW \$(__git_ps1)\n$LIGHT_GRAY\$ "

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
    source `brew --prefix`/etc/bash_completion.d/vagrant
fi

#OktaAWSCLI
if [[ -f "$HOME/.okta/bash_functions" ]]; then
    . "$HOME/.okta/bash_functions"
fi
if [[ -d "$HOME/.okta/bin" && ":$PATH:" != *":$HOME/.okta/bin:"* ]]; then
    PATH="$HOME/.okta/bin:$PATH"
fi


export PATH=/Applications:$PATH

# export FASTLY_API_KEY=''
export FASTLY_API_KEY=''
