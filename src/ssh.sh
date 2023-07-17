_patch_help() {
    echo "Usage: ssh [options] destination [args]..."
    _patch_help_run_man ssh | sed -n '/^DESCRIPTION/, /^AUTHENTICATION/ {//!p}'
}

_patch_table() {
    _patch_table_dedup_options \
        -L \
        -R \
    | \
    _patch_table_edit_options \
        '-L([bind_address:]port:host:hostport)' \
        '-R([bind_address:]port:host:hostport)' \
        '-o;[`_module_ssh_option`]' \
        '-c;*,[`_module_ssh_cipher`]' \
        '-O;[`_choice_ctl_cmd`]' \
        '-Q;[`_choice_query`]' \
        ';;' \
    | \
    _patch_table_edit_arguments \
        'destination;[`_module_ssh_host`]' \

}

_choice_query() {
    cat <<-'EOF'
cipher	supported symmetric ciphers
cipher-auth	supported symmetric ciphers that support authenticated encryption
help	supported query terms for use with the -Q flag
mac	supported message integrity codes
kex	key exchange algorithms
key	key types
key-cert	certificate key types
key-plain	non-certificate key types
key-sig	all key types and signature algorithms
protocol-version	supported SSH protocol versions
sig	supported signature algorithms
EOF
}

_choice_ctl_cmd() {
    cat <<-'EOF'
check	check that the master process is running
forward	request forwardings without command execution
cancel	cancel forwardings
exit	request the master to exit
stop	request the master to stop accepting further multiplexing requests
EOF
}
