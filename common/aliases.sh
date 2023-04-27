alias ls="ls --color"
alias ll="ls -l --human-readable"
alias la="ll --all"

alias clean="find . \( -name '*~' -o -name '#*#' -o -name '.swp' -o -name 'a.out' \) -print -delete"

alias gits="git status"
alias gitd="git diff"
alias gitdc="git diff --cached"
alias gitf='for file in $(git ls-files --modified); do echo $file ; clang-format -i $file ; done'

alias e="emacs -nw"
alias wai="clear ; echo ; pwd ; echo ; ls"
