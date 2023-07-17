#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -m                                     do not reset environment variables
# @flag -p                                     do not reset environment variables
# @flag --preserve-environment                 do not reset environment variables
# @option -w --whitelist-environment <list>    don't reset specified variables
# @option -g --group[`_module_os_group`] <group>  specify the primary group
# @option -G --supp-group[`_module_os_group`] <group>  specify a supplemental group
# @flag -l --login                             make the shell a login shell
# @option -c --command <command>               pass a single command to the shell with -c
# @option --session-command <command>          pass a single command to the shell with -c and do not create a new session
# @flag -f --fast                              pass -f to the shell (for csh or tcsh)
# @option -s --shell[`_module_os_shell`] <shell>  run <shell> if /etc/shells allows it
# @flag -P --pty                               create a new pseudo-terminal
# @flag -h --help                              display this help
# @flag -V --version                           display version
# @arg user[`_module_os_user`]
# @arg args*

_module_os_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_shell() {
    cat /etc/shells | sed -n '/^\// p'   
}

_module_os_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"