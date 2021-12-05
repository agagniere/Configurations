alias ls="ls --color"
alias ll="ls -l"
alias la="ls -la"

alias clean="find . \( -name '*~' -o -name '#*#' -o -name '.swp' \) -print -delete"
alias cleanpy="find . -name '*.pyc' -print -delete"
alias cleantex="find . \( -name '*.aux' -o -name '*.idx' -o -name '*.ilg' -o -name '*.ind' -o -name '*.log' -o -name '*.toc' \) -print -delete"

alias gits="git status"
alias gitd="git diff"
alias gitdc="git diff --cached"
alias gitf='for file in $(git ls-files --modified); do echo $file ; clang-format-9 -i $file ; done'

alias e="emacs -nw"
alias wai="clear ; echo ; pwd ; echo ; ls"
alias update="sudo apt update && sudo apt upgrade && sudo apt autoclean && sudo apt autoremove"
