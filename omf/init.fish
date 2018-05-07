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

# WSL Specific shortcuts
if test -n WSL
    function gradlew
        command cmd.exe /c gradlew.bat $argv
    end

    function cargo
        command cargo.exe $argv
    end

    function rustup
        command rustup.exe $argv
    end
end


# Git aliases
function gco
    command git checkout $argv
end

function gb
    command git branch $argv
end
