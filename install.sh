# Setup datadog workspace

location="$(dirname $0)"

ln --symbolic --relative $location/dot_emacs.el ~/.emacs
ln --symbolic --relative $location/dot_vimrc ~/.vimrc

./$location/seup_emacs.el
