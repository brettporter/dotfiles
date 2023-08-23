# Set PATH, MANPATH, etc., for Homebrew.
if [ -x /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
else
	eval "$(/usr/local/bin/brew shellenv)"
fi

export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export EDITOR="vim"
