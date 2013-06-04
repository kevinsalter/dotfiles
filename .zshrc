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
alias er='~/Localhost/er_dev/mainsite/'
alias mampsql="/Applications/MAMP/Library/bin/mysql"
alias ..='../'
alias ...='../.../'
alias vhosts='sublime /etc/hosts'
alias art='php artisan'
alias chrome='open -a "Google Chrome"'
alias desk='cd ~/Desktop/'
alias git-undo='git reset --soft HEAD~1'
alias gstt='git status -sb'
alias git-count='git shortlog -sn'

function f4() { compass create $1 -r zurb-foundation --using foundation }
function tbs() { compass create $1 -r bootstrap-sass --using bootstrap }

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

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/git/bin:/usr/local/sbin:/Users/kevin_salter/.rvm/gems/ruby-1.9.3-p194/bin:/Users/kevin_salter/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/kevin_salter/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/kevin_salter/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/kevin_salter/.rvm/bin:/Users/kevin_salter/.rvm/bin
export PATH=${PATH}:/Applications/adt-bundle-mac-x86_64-20130219/sdk/platform-tools:
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*alias git=hub
if type compdef >/dev/null; then
   compdef hub=git
fi
