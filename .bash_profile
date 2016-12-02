if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source $(brew --prefix autoenv)/activate.sh

eval "$(hub alias -s)"
