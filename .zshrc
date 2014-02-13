# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kevinsalter"

# Aliases & Functions
alias server='open http://localhost:8000 && python -m SimpleHTTPServer'
alias handlesbars="/usr/local/share/npm/lib/node_modules/handlebars/bin/handlebars"
alias glogd="git log --oneline --graph --decorate"
alias showlibrary='chflags nohidden ~/Library/'
alias hidelibrary='chflags hidden ~/Library'
alias mampsql="/Applications/MAMP/Library/bin/mysql"
alias ..='cd ..'            # Go up one directory
alias ...='cd ../..'        # Go up two directories
alias ....='cd ../../..'    # And for good measure
alias l='ls -lah'           # Long view, show hidden
alias la='ls -AF'           # Compact view, show hidden
alias ll='ls -lFh'          # Long view, no hidden
alias be='bundle exec'
alias rake="noglob rake"
alias vhosts='sublime /etc/hosts'
alias art='php artisan'
alias chrome='open -a "Google Chrome"'
alias desk='cd ~/Desktop/'
alias glr='git pull --rebase'
alias gsp='git stash pop'
alias gitl='git log --pretty=format:"%h - %an, %ar : %s"'
alias git-undo='git reset --soft HEAD~1'
alias git-lines="git ls-files | xargs wc -l"
alias git-count='git shortlog -sn'
alias lo='cd Localhost/'
alias bower='noglob bower'
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"

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
plugins=(git github sublime)

source $ZSH/oh-my-zsh.sh

# PATH
export PATH=/usr/local/bin:/usr/local/git/bin:/usr/local/sbin:/Users/kevin_salter/.rvm/gems/ruby-1.9.3-p194/bin:/Users/kevin_salter/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/kevin_salter/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/kevin_salter/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/kevin_salter/.rvm/bin:/Users/kevin_salter/.rvm/bin
export PATH=${PATH}:/Applications/adt-bundle-mac-x86_64-20130219/sdk/platform-tools:
export PATH=${PATH}:/Users/kevin_salter/Localhost/bex-dev/elixir/bin:
export PATH=${PATH}:/usr/local/php54/bin:

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*alias git=hub
if type compdef >/dev/null; then
   compdef hub=git
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

__rvm_project_rvmrc
