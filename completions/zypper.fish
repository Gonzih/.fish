# completion for zypper

set -g __fish_zypper_all_commands help shell sh repos lr addrepo ar removerepo rr renamerepo nr modifyrepo mr refresh ref clean services ls addservice as modifyservice ms removeservice rs refresh-services refs install in remove rm verify ve source-install si install-new-recommends inr update up list-updates lu patch list-patches lp dist-upgrade dup patch-check pchk search se info if patch-info pattern-info product-info patches pch packages pa patterns pt products pd what-provides wp addlock al removelock rl locks ll cleanlocks cl versioncmp vcmp targetos tos licenses source-download
set -g __fish_zypper_pkg_commands in install rm remove

function __fish_zypper_cmd_in_array
    for i in (commandline -pco)
        if contains $i $argv
            return 0
        end
    end

    return 1
end

function __fish_zypper_no_subcommand
    not __fish_zypper_cmd_in_array $__fish_zypper_all_commands
end

function __fish_zypper_use_pkg
    __fish_zypper_cmd_in_array $__fish_zypper_pkg_commands
end

complete -n '__fish_zypper_use_pkg' -c zypper -a '(__fish_print_packages)' --description 'Package'

complete -n '__fish_zypper_no_subcommand' -c zypper -a 'install' --description 'Install packages'
complete -n '__fish_zypper_no_subcommand' -c zypper -a 'in'      --description 'Install packages'

complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'help'                   --description 'Print help'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'shell'                  --description 'Accept multiple commands at once'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'repos'                  --description 'List all defined repositories'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'addrepo'                --description 'Add a new repository'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'removerepo'             --description 'Remove specified repository'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'renamerepo'             --description 'Rename specified repository'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'modifyrepo'             --description 'Modify specified repository'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'refresh'                --description 'Refresh all repositories'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'services'               --description 'List all defined services'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'addservice'             --description 'Add a new service'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'modifyservice'          --description 'Modify specified service'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'removeservice'          --description 'Remove specified service'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'refresh-services'       --description 'Refresh all services'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'remove'                 --description 'Remove packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'verify'                 --description 'Verify integrity of package dependencies'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'source-install'         --description 'Install source packages and their build dependencies'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'install-new-recommends' --description 'Install newly added packages recommended by installed packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'update'                 --description 'Update installed packages with newer versions'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'list-updates'           --description 'List available updates'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'list-patches'           --description 'List needed patches'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'dist-upgrade'           --description 'Perform a distribution upgrade'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'patch-check'            --description 'Check for patches'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'search'                 --description 'Search for packages matching a pattern'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'info'                   --description 'Show full information for specified packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'patches'                --description 'List all available patches'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'packages'               --description 'List all available packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'patterns'               --description 'List all available patterns'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'products'               --description 'List all available products'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'what-provides'          --description 'List packages providing specified capability'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'addlock'                --description 'Add a package lock'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'removelock'             --description 'Remove a package lock'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'locks'                  --description 'List current package locks'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'cleanlocks'             --description 'Remove unused locks'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'versioncmp'             --description 'Compare two version strings'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'targetos'               --description 'Print the target operating system ID string'

complete -f -n '__fish_zypper_no_subcommand' -c zypper -a '?'                      --description 'Print help'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'sh'                     --description 'Accept multiple commands at once'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'lr'                     --description 'List all defined repositories'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'ar'                     --description 'Add a new repository'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'rr'                     --description 'Remove specified repository'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'nr'                     --description 'Rename specified repository'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'mr'                     --description 'Modify specified repository'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'ref'                    --description 'Refresh all repositories'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'ls'                     --description 'List all defined services'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'as'                     --description 'Add a new service'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'ms'                     --description 'Modify specified service'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'rs'                     --description 'Remove specified service'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'refs'                   --description 'Refresh all services'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'rm'                     --description 'Remove packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 've'                     --description 'Verify integrity of package dependencies'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'si'                     --description 'Install source packages and their build dependencies'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'inr'                    --description 'Install newly added packages recommended by installed packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'up'                     --description 'Update installed packages with newer versions'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'lu'                     --description 'List available updates'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'lp'                     --description 'List needed patches'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'dup'                    --description 'Perform a distribution upgrade'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'pchk'                   --description 'Check for patches'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'se'                     --description 'Search for packages matching a pattern'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'if'                     --description 'Show full information for specified packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'pch'                    --description 'List all available patches'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'pa'                     --description 'List all available packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'pt'                     --description 'List all available patterns'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'pd'                     --description 'List all available products'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'wp'                     --description 'List packages providing specified capability'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'al'                     --description 'Add a package lock'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'rl'                     --description 'Remove a package lock'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'll'                     --description 'List current package locks'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'cl'                     --description 'Remove unused locks'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'vcmp'                   --description 'Compare two version strings'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'tos'                    --description 'Print the target operating system ID string'

complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'licenses'               --description 'Print report about licenses and EULAs of installed packages'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'source-download'        --description 'Download source rpms for all installed packages to a local directory'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'clean'                  --description 'Clean local caches'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'patch-info'             --description 'Show full information for specified patches'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'pattern-info'           --description 'Show full information for specified patterns'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'product-info'           --description 'Show full information for specified products'
complete -f -n '__fish_zypper_no_subcommand' -c zypper -a 'patch'                  --description 'Install needed patches'

complete -c zypper -l help -s h            --description 'Help'
complete -c zypper -l version -s V         --description 'Output the version number'
complete -c zypper -l config -s c          --description 'Use specified config file instead of the default'
complete -c zypper -l quiet -s q           --description 'Suppress normal output, print only error messages'
complete -c zypper -l verbose -s v         --description 'Increase verbosity'
complete -c zypper -l no-abbrev -s A       --description 'Do not abbreviate text in tables'
complete -c zypper -l table-style -s s     --description 'Table style (integer)'
complete -c zypper -l rug-compatible -s r  --description 'Turn on rug compatibility'
complete -c zypper -l non-interactive -s n --description 'Do not ask anything, use default answers automatically'
complete -c zypper -l xmlout -s x          --description 'Switch to XML output'
complete -c zypper -l ignore-unknown -s i  --description 'Ignore unknown packages'
complete -c zypper -l plus-repo -s p       --description 'Use an additional repository'
complete -c zypper -l reposd-dir -s D      --description 'Use alternative repository definition file directory'
complete -c zypper -l cache-dir -s C       --description 'Use alternative directory for all caches'
complete -c zypper -l root -s R            --description 'Operate on a different root directory'

complete -c zypper -l non-interactive-include-reboot-patches --description 'Do not treat patches as interactive, which have the rebootSuggested-flag set'
complete -c zypper -l no-gpg-checks                          --description 'Ignore GPG check failures and continue'
complete -c zypper -l gpg-auto-import-keys                   --description 'Automatically trust and import new repository signing keys'
complete -c zypper -l disable-repositories                   --description 'Do not read meta-data from repositories'
complete -c zypper -l no-refresh                             --description 'Do not refresh the repositories'
complete -c zypper -l no-cd                                  --description 'Ignore CD/DVD repositories'
complete -c zypper -l no-remote                              --description 'Ignore remote repositories'
complete -c zypper -l disable-system-resolvables             --description 'Do not read installed packages'
complete -c zypper -l promptids                              --description 'Output a list of zypper user prompts'
complete -c zypper -l userdata                               --description 'User defined transaction id used in history and plugins'
complete -c zypper -l raw-cache-dir                          --description 'Use alternative raw meta-data cache directory'
complete -c zypper -l solv-cache-dir                         --description 'Use alternative solv file cache directory'
complete -c zypper -l pkg-cache-dir                          --description 'Use alternative package cache directory'
