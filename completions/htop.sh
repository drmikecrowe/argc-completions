#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -C --no-color                       Use a monochrome color scheme
# @option -d --delay                        Set the delay between updates, in tenths of seconds
# @option -F --filter                       Show only the commands matching the given filter
# @flag -h --help                           Print this help screen
# @option -H --highlight-changes <DELAY>    Highlight new and old processes
# @flag -M --no-mouse                       Disable the mouse
# @option -p --pid*,[`_module_os_pid`] <PID[,PID,PID...]>  Show only the given PIDs
# @option -s --sort-key[`_choice_sort_key`] <COLUMN>  Sort by COLUMN in list view (try --sort-key=help for a list)
# @flag -t --tree                           Show the tree view (can be combined with -s)
# @option -u --user[`_module_os_user`] <USERNAME>  Show only processes for a given user (or $USER)
# @flag -U --no-unicode                     Do not use unicode but plain ASCII
# @flag -V --version                        Print version info

_choice_sort_key() {
    htop --sort-key=help
}

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

_module_os_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"