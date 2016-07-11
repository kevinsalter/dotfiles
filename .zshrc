### Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


### Set name of the theme to load.
### Look in ~/.oh-my-zsh/themes/
ZSH_THEME="kevinsalter"


### loads my Aliases & Functions
source $HOME/.aliases
source $HOME/.zprofile


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sublime)

source $ZSH/oh-my-zsh.sh


### PATH
export PATH=/Users/kevinsalter/bin:/usr/local/bin:/usr/local/sbin
export PATH=${PATH}:/usr/bin:/bin:/usr/sbin:/sbin:
export PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/9.4/bin:

# so node modules can be required in the REPL
export NODE_PATH=/usr/local/lib/node_modules

# pip install virtualenv && virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
source /usr/local/bin/virtualenvwrapper.sh


### hub is a command-line wrapper for git
if type compdef >/dev/null; then
  compdef hub=git
fi

# make less pager work better with httpie
function httpless {
    # `httpless example.org'
    http --pretty=all --print=hb "$@" | less -R;
}

### calls eval "$(rbenv init -)"
source $HOME/.bash_profile


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/kevinsalter/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
