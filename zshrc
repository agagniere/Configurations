PATH=$HOME/.brew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin
HISTFILE=~/.zshrc_history
SAVEHIST=5000
HISTSIZE=5000

setopt inc_append_history
setopt share_history

if [[ -f ~/.myzshrc ]]; then
  source ~/.myzshrc
fi

USER=`/usr/bin/whoami`
export USER
GROUP=`/usr/bin/id -gn $user`
export GROUP
MAIL="$USER@student.42.fr"
export MAIL

# My personnal aliases
alias wai="clear ; echo -e '\n\t\t--===\033[0;31m Hello Antoine \033[1;0m===--\n' ; pwd ; ls -G"
alias clean="find . \( -name '*~' -o -name '#*#' -o -name '.DS_Store' -o -name 'a.out' -o -name '*.swp' -o -name '*.o' -o -name '*.gch' \) -print -delete"
alias waigit="clear ; echo -e '\n\t\t--=== Hello ===--\n' ; git status ; pwd ; ls "
alias gccf="gcc -Wall -Wextra -Werror "
alias nm="norminette"
alias nmf="norminette --CheckForbiddenSourceHeader"
alias nmall="norminette **/*.c **/*.h"
alias all="wai ; clean ; nm **/*.c **/*.h ; gccf **/*.c"
alias cacherm="rm -rf ~/Library/Caches/com.spotify.client/Storage/ ; rm -rf ~/.caches ; rm -rf ~/.valgrind ; rm -rf ~/.*~ ; rm -rf ~/.serverauth* ; rm -rf ~/.Trash/* ; rm -rf ~/.bash_history ; rm -rf ~/Library/Caches/Google ; rm -rf ~/Library/Caches/*Update* ; rm -rf `brew --cache` ; brew cleanup -s --force ; rm -rf ~/Library/Caches/com.apple.helpd ; rm -rf ~/Library/Developer"
alias src="source ~/.zshrc"