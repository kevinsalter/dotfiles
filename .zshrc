### Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


### Set name of the theme to load.
### Look in ~/.oh-my-zsh/themes/
ZSH_THEME="spaceship"


### loads my Aliases & Functions
source $HOME/.aliases
# source $HOME/.zprofile


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sublime zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


### PATH
export PATH=/Users/kevinsalter/bin:/usr/local/bin:/usr/local/sbin
export PATH=${PATH}:/usr/bin:/bin:/usr/sbin:/sbin:
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin


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
# source $HOME/.bash_profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### calls `nvm use` automatically whenever you enter a directory that contains an `.nvmrc` file
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
