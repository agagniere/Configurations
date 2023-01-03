# Basic tools
sudo apt-get -qq update

sudo apt-get -qq install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

sudo apt-get -qq install -y git emacs

ln -s ~/configuration/dot_emacs.el     ~/.emacs
ln -s ~/configuration/dot_gitconfig    ~/.gitconfig
ln -s ~/configuration/dot_clang-format ~/.clang-format
ln -s ~/configuration/dot_bashrc.sh    ~/.bash_aliases

# Compilers
sudo apt-get -qq install -y gcc-12 clang-14 clang-format-14

sudo update-alternatives --install /usr/bin/gcc             gcc          /usr/bin/gcc-12          50
sudo update-alternatives --install /usr/bin/clang           clang        /usr/bin/clang-14        50
sudo update-alternatives --install /usr/bin/cc              cc           /usr/bin/gcc-12          30
sudo update-alternatives --install /usr/bin/cc              cc           /usr/bin/clang-14        50
sudo update-alternatives --install /usr/bin/clang-format    clang-format /usr/bin/clang-format-14 50

# Python
curl https://pyenv.run | bash

pyenv install 3.11
pyenv global 3.11

# Misc
sudo apt-get -qq install -y xclip locate

sudo updatedb
