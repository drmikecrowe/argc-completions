#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --schemadir

# {{ gsettings list-schemas
# @cmd List installed schemas
# @option --schemadir
# @flag --print-paths
list-schemas() {
    :;
}
# }} gsettings list-schemas

# {{ gsettings list-relocatable-schemas
# @cmd List relocatable schemas
# @option --schemadir
list-relocatable-schemas() {
    :;
}
# }} gsettings list-relocatable-schemas

# {{ gsettings list-keys
# @cmd List keys in a schema
# @option --schemadir
list-keys() {
    :;
}
# }} gsettings list-keys

# {{ gsettings list-children
# @cmd List children of a schema
# @option --schemadir
list-children() {
    :;
}
# }} gsettings list-children

# {{ gsettings list-recursively
# @cmd List keys and values, recursively
# @option --schemadir
list-recursively() {
    :;
}
# }} gsettings list-recursively

# {{ gsettings range
# @cmd Queries the range of a key
# @arg schema-path[`_choice_schema_path`] <SCHEMA[:PATH]>
# @arg key[`_choice_key`]
# @option --schemadir
range() {
    :;
}
# }} gsettings range

# {{ gsettings describe
# @cmd Queries the description of a key
# @arg schema-path[`_choice_schema_path`] <SCHEMA[:PATH]>
# @arg key[`_choice_key`]
# @option --schemadir
describe() {
    :;
}
# }} gsettings describe

# {{ gsettings get
# @cmd Get the value of a key
# @arg schema-path[`_choice_schema_path`] <SCHEMA[:PATH]>
# @arg key[`_choice_key`]
# @option --schemadir
get() {
    :;
}
# }} gsettings get

# {{ gsettings set
# @cmd Set the value of a key
# @arg schema-path[`_choice_schema_path`] <SCHEMA[:PATH]>
# @arg key[`_choice_key`]
# @arg value
# @option --schemadir
set() {
    :;
}
# }} gsettings set

# {{ gsettings reset
# @cmd Reset the value of a key
# @arg schema-path[`_choice_schema_path`] <SCHEMA[:PATH]>
# @arg key[`_choice_key`]
# @option --schemadir
reset() {
    :;
}
# }} gsettings reset

# {{ gsettings reset-recursively
# @cmd Reset all values in a given schema
# @option --schemadir
reset-recursively() {
    :;
}
# }} gsettings reset-recursively

# {{ gsettings writable
# @cmd Check if a key is writable
# @arg schema-path[`_choice_schema_path`] <SCHEMA[:PATH]>
# @arg key[`_choice_key`]
# @option --schemadir
writable() {
    :;
}
# }} gsettings writable

# {{ gsettings monitor
# @cmd Watch for changes
# @option --schemadir
monitor() {
    :;
}
# }} gsettings monitor

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_gsettings() {
    gsettings $(_argc_util_param_select_options --schemadir) "$@"
}

_choice_schema() {
    _gsettings list-schemas
}

_choice_relocatable_schema() {
    _gsettings list-relocatable-schemas
}

_choice_schema_path() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_schema
        _choice_relocatable_schema | _argc_util_transform suffix=: nospace
    else
        _argc_util_comp_path
    fi
}

_choice_key() {
    if [[ -z "$argc_schema_path" ]]; then
        return
    fi
    _gsettings list-keys ${argc_schema_path%%:*}
}

command eval "$(argc --argc-eval "$0" "$@")"