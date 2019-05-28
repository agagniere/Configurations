# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    42_aliases.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: angagnie <angagnie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/11 11:34:22 by angagnie          #+#    #+#              #
#    Updated: 2019/05/28 09:42:27 by angagnie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

alias gccf="gcc -Wall -Wextra -Werror "
alias cacherm="rm -rf ~/Library/Caches/com.spotify.client/Storage/ ; rm -rf ~/.caches ; rm -rf ~/.valgrind ; rm -rf ~/.*~ ; rm -rf ~/.serverauth* ; rm -rf ~/.Trash/* ; rm -rf ~/.bash_history ; rm -rf ~/Library/Caches/Google ; rm -rf ~/Library/Caches/*Update* ; rm -rf `brew --cache` ; brew cleanup -s --force ; rm -rf ~/Library/Caches/com.apple.helpd ; rm -rf ~/Library/Developer"
alias norm="norminette **/*.c **/*.h | grep -v Norme -B1"
alias nvcc=/Developer/NVIDIA/CUDA-7.0/bin/nvcc
alias vim=emacs
alias vi=emacs
