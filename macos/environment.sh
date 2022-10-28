# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Autocomplete
FPATH="$(brew --prefix)/share/zsh/site-functions:$FPATH"
autoload -Uz compinit
compinit

# Pyenv
PYENV_ROOT="~/.pyenv"
eval "$(pyenv init -)"
