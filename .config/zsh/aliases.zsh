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

# bundler
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

# rails
alias ror="bin/rails"
alias rors="bin/rails s -b 127.0.0.1"
alias rorc="bin/rails c"
alias rorg="bin/rails g"
alias rord="bin/rails d"
