# check if running under WSL
if grep -q Microsoft /proc/version
    set -gx WSL "true"
end

# WSL Specific configs
if test -n "$WSL"
    if test (umask) = "0000"
        umask 22
    end
end
