export PATH="$HOME/.local/bin:$PATH"

[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
