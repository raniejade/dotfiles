#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

export EDITOR='vim'

alias ts="tmux new-session -t"
alias tls="tmux list-sessions"
alias ta="tmux attach-session -t"
alias td="tmux detach"
alias tlw="tmux list-windows"
alias mux="tmuxinator"

# jEnv
# rehash is done in the background since it's very slow
export PATH="$HOME/dotfiles/jenv/bin:$PATH"
eval "$(jenv init - --no-rehash)"
(jenv rehash &) 2> /dev/null

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
