alias update="sudo apt update && sudo apt upgrade && sudo apt autoclean && sudo apt autoremove && sudo snap refresh"

# https://github.com/NixOS/nix/issues/5567
# Python with packages
nix_pwp () {
    local python=$1;
    shift;
    local pkgs=$@;
    nix build \
        --impure \
        --expr "with builtins; with getFlake \"nixpkgs\"; (getAttr currentSystem legacyPackages).$python.withPackages (ps: with ps; [ $pkgs ])"
}
