# Colorize grep output (good for log files)
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# confirm before overwriting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# easier to read disk
alias df="df -h"     # human-readable sizes
alias free="free -m" # show sizes in MB

# get top process eating memory
alias psmem="ps auxf | sort -nr -k 4 | head -5"

# get top process eating cpu ##
alias pscpu="ps auxf | sort -nr -k 3 | head -5"

# bat
if [ "$(command -v bat)" ]; then
  unalias -m "cat"
  alias cat="bat -pp"
fi

# eza
if [ "$(command -v eza)" ]; then
  alias ls='eza --group-directories-first --icons=auto'

  if eza --version | grep -q '+git';
  then
    alias ll='ls -lh --git'
  else
    alias ll='ls -lh'
  fi

  alias la='ll -a'
  alias tree='ll --tree --level=2'
fi

# bundler
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

# rails
alias ror="bin/rails"
alias rors="rails_server"
alias rorc="bin/rails c"
alias rorg="bin/rails g"
alias rord="bin/rails d"
