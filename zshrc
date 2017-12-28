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
