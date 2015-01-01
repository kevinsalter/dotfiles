### Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

### Set name of the theme to load.
### Look in ~/.oh-my-zsh/themes/
ZSH_THEME="kevinsalter"

### Aliases & Functions
alias server='open http://localhost:8000 && python -m SimpleHTTPServer'
alias glogd='git log --graph --decorate'
alias showlibrary='chflags nohidden ~/Library/'
alias hidelibrary='chflags hidden ~/Library'
alias ..='cd ..'            # Go up one directory
alias ...='cd ../..'        # Go up two directories
alias ....='cd ../../..'    # And for good measure
alias l='ls -lah'           # Long view, show hidden
alias la='ls -AF'           # Compact view, show hidden
alias ll='ls -lFh'          # Long view, no hidden
alias be='bundle exec'
alias rake="noglob rake"
alias vhosts='st /etc/hosts'
alias art='php artisan'
alias chrome='open -a "Google Chrome"'
alias desk='cd ~/Desktop'
alias code='cd ~/code'
alias gst='git status -sb'
alias glr='git pull --rebase'
alias gsp='git stash pop'
alias gitl='git log --pretty=format:"%h - %an, %ar : %s"'
alias git-undo='git reset --soft HEAD~1'
alias git-lines="git ls-files | xargs wc -l"
alias git-count='git shortlog -sn'
alias bower='noglob bower'
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"
alias sha256='shasum -a 256'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sublime)

source $ZSH/oh-my-zsh.sh

### PATH
export PATH=/Users/kevinsalter/bin:/usr/local/bin:/usr/local/sbin
export PATH=${PATH}:/usr/bin:/bin:/usr/sbin:/sbin:

### virtualenvwrapper vars
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

### hub is a command-line wrapper for git
if type compdef >/dev/null; then
  compdef hub=git
fi

### calls eval "$(rbenv init -)"
source $HOME/.bash_profile

### boot2docker vars
export DOCKER_CERT_PATH=/Users/kevinsalter/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
