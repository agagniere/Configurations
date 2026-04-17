#! /bin/bash

assume=$1

function cargo_install_latest()
{
	local site=$1
	local name=$2
	local binary=$3
	local regex=${4:-'v?\d+[.]\d+[.]\d+$'}

	local url="https://$site/$name"
	local tag=$(git ls-remote --tags $url | grep -E $regex --only-matching | sort -V | tail -1)
	local command="cargo install --git $url --tag $tag $binary --locked"

	if test -z "$assume" && $(gum confirm "Install $name version $tag ?") || test "$assume" = "-y"
	then
		gum spin --spinner dot --title "[cargo] Installing $name version $tag" -- $command
		gum log --time TimeOnly --structured --level info "$name" version $tag
	else
		gum log --time TimeOnly --level warn "Skipped $name"
	fi
}

function go_install_latest()
{
	local module=$1
	local name=${2:-$(basename $module)}
	local version=${3:-"latest"}
	local command="go install ${module}@${version}"

	gum spin --spinner dot --title "[go] Installing $name $version" --show-output -- $command
	gum log --time TimeOnly --structured --level info $name version $version
}

go install github.com/charmbracelet/gum@latest
gum log --time TimeOnly --structured --level info gum version latest

cargo_install_latest github.com typst/typst typst-cli
cargo_install_latest github.com weezy20/zv
cargo_install_latest github.com nushell/nushell nu '\d+[.]\d+[.]\d+$'
cargo_install_latest github.com astral-sh/uv uv
cargo_install_latest github.com bytecodealliance/wasmtime wasmtime-cli
cargo_install_latest github.com bytecodealliance/wasm-tools wasm-tools
cargo_install_latest github.com bytecodealliance/wit-bindgen
cargo_install_latest github.com typstyle-rs/typstyle

go_install_latest github.com/mikefarah/yq/v4 yq
go_install_latest github.com/tomwright/dasel/v3/cmd/dasel
go_install_latest github.com/charmbracelet/glow/v2 glow
go_install_latest github.com/google/go-jsonnet/cmd/jsonnet
go_install_latest github.com/google/go-jsonnet/cmd/jsonnet-lint
go_install_latest github.com/google/go-jsonnet/cmd/jsonnetfmt
go_install_latest github.com/google/go-jsonnet/cmd/jsonnet-deps
go_install_latest github.com/go-delve/delve/cmd/dlv delve
go_install_latest github.com/krzko/otelgen/cmd/otelgen
go_install_latest github.com/linuxerwang/goroutine-inspect goroutine-inspect master
go_install_latest github.com/ahmetb/kubectx/cmd/kubens
go_install_latest github.com/ahmetb/kubectx/cmd/kubectx
