BOLD="\033[1m"
EOC="\033[0m"

function cargo_install_latest()
{
	local site=$1
	local name=$2
	local binary=$3

	local url="https://$site/$name"
	local tag=$(git ls-remote --tags $url | grep -E 'v?\d+[.]\d+[.]\d+$' --only-matching | sort -V | tail -1)
	local command="cargo install --git $url --tag $tag $binary --locked"

	echo ${BOLD}Going to install $name $binary version $tag ${EOC} Press ENTER to continue, CTRL+C to abort.
	read -r
	echo $command
	eval $command
}

cargo_install_latest github.com typst/typst  typst-cli
cargo_install_latest github.com astral-sh/uv uv
cargo_install_latest github.com weezy20/zv
cargo_install_latest github.com nushell/nushell nu

go install github.com/mikefarah/yq/v4@latest
go install github.com/tomwright/dasel/v3/cmd/dasel@master
go install github.com/charmbracelet/glow/v2@latest
go install github.com/google/go-jsonnet/cmd/jsonnet@latest
go install github.com/google/go-jsonnet/cmd/jsonnet-lint@latest
go install github.com/google/go-jsonnet/cmd/jsonnetfmt@latest
go install github.com/google/go-jsonnet/cmd/jsonnet-deps@latest
