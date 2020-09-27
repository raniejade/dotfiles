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
#if test -n WSL
#    function gradlew
#        command cmd.exe /c gradlew.bat $argv
#    end
#
#    function cargo
#        command cargo.exe $argv
#    end
#
#    function rustup
#        command rustup.exe $argv
#    end
#
#    function kubectl
#        command kubectl.exe $argv
#    end
#
#    function minikube
#        command minikube.exe $argv
#    end
#
#    function docker
#        command docker.exe $argv
#    end
#
#    function docker-machine
#        command docker-machine.exe $argv
#    end
#end


# Git aliases
function gco
    command git checkout $argv
end

function gb
    command git branch $argv
end

# Github aliases
function __git-base-branch
    command git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'
end

function __git-current-branch
    command git rev-parse --abbrev-ref HEAD
end

function gh-repo-link
    command git remote get-url origin | sed -n 's_.*:\\(.*\\)\\.git_https://github.com/\\1_p'
end

function gh-pr-link
    set -l base (__git-base-branch)
    set -l repo_link (gh-repo-link)
    set -l branch (__git-current-branch)
    if [ "$base" = "$branch" ]
        echo "Invalid base branch."
        return 1
    end
    set -l pr_link $repo_link/compare/$base...$branch
    echo $pr_link
end

function gh-publish
    if set -l pr_link (gh-pr-link)
        set -l branch (__git-current-branch)
        echo "Pushing $branch to origin."
        command git push -u origin $branch
        echo "Create PR using this url: $pr_link"
    else
        echo "Invalid base branch."
        return 1
    end
end
