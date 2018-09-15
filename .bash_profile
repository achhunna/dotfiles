# Run $brew install git bash-completion
source /usr/local/etc/bash_completion.d/git-completion.bash

# Git branch in prompt & hide user@machine
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
