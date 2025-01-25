# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

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
plugins=(git)

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

#SYNC GitHub .zshrc to Local .zshrc
alias update-zshrc="cd ~/Documents/dotmacos && git pull && cp .zshrc ~/.zshrc && source ~/.zshrc && echo '✅ .zshrc updated and sourced from GitHub!'"

# General Linux
alias ..='cd ..'
alias ....='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias c='clear'
alias csrgen='openssl req -out CSR.csr -new -newkey rsa:4096 -nodes -keyout privatekey.key'
alias myip='curl http://ipecho.net/plain; echo'
alias disk='df -h'
alias mem='free -m'
alias psaux='ps aux | grep'
alias his='history | tail -n 100'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# K8s
alias k='kubectl' 
alias kx='kubectx'
alias kg='kubectl get'
alias ke='kubectl edit'
alias kd='kubectl describe'
alias kdel='kubectl delete'
alias kgp='kubectl get pods'
alias kgd='kubectl get deployments'
alias kgs='kubectl get service'
alias kgsec='kubectl get secret -o yaml'
alias kseca='kubectl get secret --all-namespaces'
alias kns='kubens'
alias kcx='kubectx'
alias wkgp='watch kubectl get pod'
alias kdp='kubectl describe pod'
alias krh='kubectl run --help | more'
alias ugh='kubectl get --help | more'
alias kcf='kubectl create -f'
alias kgpl='kubectl get pods --show-labels'
alias kr='kubectl replace -f'
alias kh='kubectl --help | more'
alias kns='kubectl get namespaces'
alias kcm='kubectl get configmaps'
alias l='ls -lrt'
alias ll='ls -rt | tail -1'
alias kgpa='k get pod --all-namespaces'
alias kgaa='kubectl get all --show-labels'
alias kgev='kubectl get events --sort-by='.metadata.creationTimestamp''
alias kdda='kubectl delete deployments --all --all-namespaces'
alias ksys='kubectl config view'
alias kexec='kubectl exec -it'
alias kgsvc='kubectl get svc -o wide'
alias kgn='kubectl get no -o wide'
alias kpf='kubectl port-forward'
alias kd='kubectl describe'
alias krr='kubectl rollout restart'
alias ksysgpo='kubectl --namespace=kube-system get pods'
alias ksysdpo='kubectl --namespace=kube-system describe pods'
alias ksysgpow='kubectl --namespace=kube-system get pods --watch'
alias kgall='kubectl get --all-namespaces'
alias podrange="kubectl get nodes -o jsonpath='{.items[*].spec.podCIDR}'"
alias nodeips='k get nodes -o custom-columns=NODE:.metadata.name,POD_CIDR:.spec.podCIDR'
alias rd="kubectx rancher-desktop"
alias dd="kubectx docker-desktop"
export do="--dry-run=client -o yaml"

# alias do="--dry-run=client -o yaml"
alias now="--force --grace-period=0"
alias argoip="kubectl get svc argocd-server -n argocd -o jsonpath='{.spec.clusterIP}'"
alias argopass="kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath='{.data.password}' | base64 --decode"

# Helm
alias hdda='helm list --all-namespaces -q | while read -r release; do helm uninstall "$release" --namespace "$(helm list --all-namespaces | grep "$release" | awk '{print $2}')" ; done'
alias hlsns='helm ls --all-namespaces'
alias h='helm'
alias hin='helm install'
alias hup='helm upgrade'
alias hdel='helm delete'
alias hlst='helm list'
alias hrepo='helm repo'
alias hrepoupd='helm repo update'
alias hdepupd='helm dependency update'

# Terraform
alias tfmt='terraform fmt --recursive'
alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfsl='terraform state list'
alias tfd='terraform destroy'
alias tfve='terraform version'
alias tfva='terraform validate'
alias tfa!='terraform apply --auto-approve'
alias tfd!='terraform destroy --auto-approve'
alias tgfmt='terragrunt hclfmt'

# Docker
alias d='docker'
alias dc='docker-compose'
alias dcl='docker container ls'
alias dil='docker image ls'
alias de='docker exec -it'
alias dpsa='docker ps -a'
alias dps='docker ps'
alias dlogs='docker logs'
alias dexec='docker exec -it'
alias drm='docker rm -f $(docker ps -a -q)'
alias dip='docker image prune -a'
alias dprune='docker system prune -f'
alias dnp='docker network prune -f'
alias traefik-start='traefik --configfile=./static.yml'

## Docker functions
BASE_DIR=$HOME/docker
DEFAULT_ROOT_PWD=mypassword

# AWS
alias aws-who='aws sts get-caller-identity'

# Git
alias gi='git init'
alias gs='git status'
alias gcl='git clone'
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gl='git log'
alias gp='git pull'
alias gps='git push'
alias gd='git diff'
alias gds='git diff --staged'
alias gr='git remote'
alias gra='git remote add'
alias grr='git remote remove'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gmv='git mv'
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias grab='git rebase --abort'
alias gt='git tag'
alias gta='git tag -a'
alias gtd='git tag -d'
alias gtv='git verify-tag'
alias gch='git cherry-pick'
alias gcha='git cherry-pick --abort'
alias gchc='git cherry-pick --continue'
alias gsh='git stash'
alias gsha='git stash apply'
alias gsph='git stash pop'
alias gsl='git stash list'

# Ansible aliases
alias a='ansible'
alias ap='ansible-playbook'
alias av='ansible-vault'
alias ag='ansible-galaxy'
alias ainv='ansible-inventory'
alias al='ansible-lint'

# General aliases
alias e='exit'
alias vi='vim'
alias his='history'
alias p='ps aux'
alias t='tail -f'
alias reload='source ~/.zshrc'
alias home="cd $HOME"

alias zt='zerotier-cli'

# Logging and monitoring
alias l='less'
alias tlog='tail -f /var/log/syslog'
alias j='journalctl -xe'
alias topcpu='ps aux --sort=-%cpu | head'
alias topmem='ps aux --sort=-%mem | head'

# Networking
alias getip='curl http://checkip.amazonaws.com/'
alias ipl='ip addr show'
alias ipt='iptables'
alias pscan='nmap -sn'
alias lsof='lsof -i'

# Dev tools
alias run-redis='docker run --rm -d --name  redis -p 127.0.0.1:6379:6379 redis'
alias run-nginx='docker run --rm -d --name nginx -p 127.0.0.1:8080:80 nginx'
alias run-apache='docker run --rm -d --name apache -p 127.0.0.1:8082:80 apache'
alias run-mysql='docker run --rm -d --name mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=testdb -p 127.0.0.1:3306:3306 mysql:5.7'
alias run-postgres='docker run --rm -d --name postgres -e POSTGRES_PASSWORD=root -e POSTGRES_DB=testdb -p 127.0.0.1:5432:5432 postgres'
alias run-mongo='docker run --rm -d --name mongo -p 127.0.0.1:27017:27017 mongo'
alias run-rabbitmq='docker run --rm -d --name rabbitmq -p 127.0.0.1:5672:5672 -p 127.0.0.1:15672:15672 rabbitmq:3-management'
alias run-elasticsearch='docker run --rm -d --name elasticsearch -p 127.0.0.1:9200:9200 -e "discovery.type=single-node" elasticsearch:7.10.1'
alias run-kibana='docker run --rm -d --name kibana -p 127.0.0.1:5601:5601 kibana:7.10.1'
alias run-grafana='docker run --rm -d --name grafana -p 127.0.0.1:3000:3000 grafana/grafana'
alias run-prometheus='docker run --rm -d --name prometheus -p 127.0.0.1:9090:9090 prom/prometheus'
alias run-jenkins='docker run --rm -d --name jenkins -p 127.0.0.1:8080:8080 -p 127.0.0.1:50000:50000 jenkins/jenkins:lts'
alias rl='npm run local'

# AWS CO Vault Aliases
alias test="aws-vault exec cst-test --"
alias demo="aws-vault exec cst-demo --"
alias prod="aws-vault exec cst-prod --"
alias readonly="aws-vault exec cst-prod-readonly --"
alias vpn="aws-vault exec cst-vpn --"
alias dfir="aws-vault exec cst-dfir --"
alias interview="aws-vault exec cst-interview --"
alias misp="aws-vault exec cst-misp --"
alias secops="aws-vault exec verify-secops --"
alias csls-prod="aws-vault exec csls-prod --"
alias vuln-scan="aws-vault exec vuln-scan --"
alias build="aws-vault exec cst-build --"
alias logging="aws-vault exec cst-logging --"
alias windows-sandbox-admin="aws-vault exec windows-sandbox-admin --"
alias central-security="aws-vault exec co-aws-central-security --"

