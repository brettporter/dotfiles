# Set PATH, MANPATH, etc., for Homebrew.
if [ -x /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
else
	eval "$(/usr/local/bin/brew shellenv)"
fi

export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export EDITOR="vim"

alias brew-not-bundled='brew leaves| while read t1; do grep -q $t1 .Brewfile || echo $t1; done'
