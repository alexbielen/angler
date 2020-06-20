@mesg $current_filename

function setup
    set -g configtmp (command mktemp -d /tmp/angler-config-temp.XXXXX)
    set -g datatmp   (command mktemp -d /tmp/angler-data-temp.XXXXX)
    set -g fish_function_path ./functions $fish_function_path
    set -g XDG_CONFIG_HOME $configtmp
    set -g XDG_DATA_HOME $datatmp
    command mkdir -p $configtmp $datatmp
end

function teardown
    command rm -rf $configtmp $datatmp
end

@test "config directory is empty" -z (
    pushd $configtmp
    command ls -1
    popd
)

@test "data directory is empty" -z (
    pushd $datatmp
    command ls -1
    popd
)

@test "angler is in function path" (
    functions -q angler
) $status -eq 0

@test "angler add clones repository to data directory" (
    angler add laughedelic/pisces
) $status -eq 0
