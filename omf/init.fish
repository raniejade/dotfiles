# see https://github.com/fish-shell/fish-shell/issues/1569
function x86
    echo '(x86)'
end
function X86
    echo '(X86)'
end

# tmux aliases
function ts
    command tmux new-session -t
end

function tls
    command tmux list-sessions
end

function ta
    command tmux attach-session -t
end

function td
    command tmux detach
end

function tlw
    command tmux list-windows
end

function mux
    command tmuxinator $argv
end