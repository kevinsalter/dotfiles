##dotfiles & backups

## .gitconfig

**note** the [alias] commands will only work on `[master]`

## Global .gitignore

git has a global configuration that applies rules to all of
your projects. For example:

    git config --global core.excludesfile ~/.global_ignore

... will apply the rules in ~/.global_ignore for all of your repos.

## To install vim-pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
