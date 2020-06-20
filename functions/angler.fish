set -g angler_version 0.0.1

function angler -d "A reproducible, rollback-able, fish package manager"
    set -q XDG_CACHE_HOME; or set XDG_CACHE_HOME ~/.cache
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    set -q XDG_DATA_HOME; or set XDG_DATA_HOME ~/.local/share
    # TODO add data directory

    set -g fish_config $XDG_CONFIG_HOME/fish
    set -g angler_repo $XDG_DATA_HOME/angler

    switch $argv[1]
        case add
          _add $argv[2..-1]
    end
end

