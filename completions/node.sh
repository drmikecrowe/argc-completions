#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --abort-on-uncaught-exception              aborting instead of exiting causes a core file to be generated for analysis
# @flag --build-snapshot                           Generate a snapshot blob when the process exits.
# @flag -c --check                                 syntax check script without executing
# @flag --completion-bash                          print source-able bash completion script
# @option -C --conditions <value>                  additional user conditions for conditional exports and imports
# @flag --cpu-prof                                 Start the V8 CPU profiler on start up, and write the CPU profile to disk before exit.
# @option --cpu-prof-dir <dir>                     Directory where the V8 profiles generated by --cpu-prof will be placed.
# @option --cpu-prof-interval <value>              specified sampling interval in microseconds for the V8 CPU profile generated with --cpu-prof.
# @option --cpu-prof-name <value>                  specified file name of the V8 CPU profile generated with --cpu-prof
# @option --diagnostic-dir <dir>                   set dir for all output files (default: current working directory)
# @option --disable-proto <value>                  disable Object.prototype.__proto__
# @flag --disallow-code-generation-from-strings    disallow eval and friends
# @option --dns-result-order <value>               set default value of verbatim in dns.lookup.
# @flag --enable-fips                              enable FIPS crypto at startup
# @flag --enable-source-maps                       Source Map V3 support for stack traces
# @option -e --eval <value>                        evaluate script
# @flag --experimental-global-customevent          expose experimental CustomEvent on the global scope
# @flag --experimental-global-webcrypto            expose experimental Web Crypto API on the global scope
# @flag --experimental-import-meta-resolve         experimental ES Module import.meta.resolve() support
# @option --loader <value>                         use the specified module as a custom loader
# @option --experimental-loader <value>            use the specified module as a custom loader
# @flag --experimental-network-imports             experimental https: support for the ES Module loader
# @option --experimental-policy <file>             use the specified file as a security policy
# @option --es-module-specifier-resolution <value>  Select extension resolution algorithm for es modules; either 'explicit' (default) or 'node'
# @option --experimental-specifier-resolution <value>  Select extension resolution algorithm for es modules; either 'explicit' (default) or 'node'
# @flag --experimental-vm-modules                  experimental ES Module support in vm module
# @flag --experimental-wasi-unstable-preview1      experimental WASI support
# @flag --experimental-wasm-modules                experimental ES Module support for webassembly modules
# @flag --force-context-aware                      disable loading non-context-aware addons
# @flag --force-fips                               force FIPS crypto (cannot be disabled)
# @flag --force-node-api-uncaught-exceptions-policy  enforces 'uncaughtException' event on Node API asynchronous callbacks
# @flag --frozen-intrinsics                        experimental frozen intrinsics support
# @flag --heap-prof                                Start the V8 heap profiler on start up, and write the heap profile to disk before exit.
# @option --heap-prof-dir <dir>                    Directory where the V8 heap profiles generated by --heap-prof will be placed.
# @option --heap-prof-interval <value>             specified sampling interval in bytes for the V8 heap profile generated with --heap-prof.
# @option --heap-prof-name <value>                 specified file name of the V8 heap profile generated with --heap-prof
# @option --heapsnapshot-near-heap-limit <value>   Generate heap snapshots whenever V8 is approaching the heap limit.
# @option --heapsnapshot-signal[`_module_os_signal`] <value>  Generate heap snapshot on specified signal
# @flag -h --help                                  print node command line options (currently set)
# @flag --huge-max-old-generation-size             increase default maximum heap size on machines with 16GB memory or more
# @option --icu-data-dir <dir>                     set ICU data load path to dir (overrides NODE_ICU_DATA) (note: linked-in ICU data is present)
# @option --input-type <value>                     set module type for string input
# @flag --insecure-http-parser                     use an insecure HTTP parser that accepts invalid HTTP headers
# @option --inspect <[host:]port>                  activate inspector on host:port (default: 127.0.0.1:9229)
# @option --inspect-brk <[host:]port>              activate inspector on host:port and break at start of user script
# @option --debug-port <[host:]port>               set host:port for inspector
# @option --inspect-port <[host:]port>             set host:port for inspector
# @option --inspect-publish-uid[stderr|http] <value>  comma separated list of destinations for inspector uid
# @flag -i --interactive                           always enter the REPL even if stdin does not appear to be a terminal
# @flag --interpreted-frames-native-stack          help system profilers to translate JavaScript interpreted frames
# @flag --jitless                                  disable runtime allocation of executable memory
# @option --max-http-header-size <value>           set the maximum size of HTTP headers (default: 16384 (16KB))
# @flag --no-addons                                disable loading native addons
# @flag --no-deprecation                           silence deprecation warnings
# @flag --no-experimental-fetch                    experimental Fetch API
# @flag --no-experimental-repl-await               experimental await keyword support in REPL
# @flag --no-extra-info-on-fatal-exception         hide extra information on fatal exception that causes exit
# @flag --no-force-async-hooks-checks              disable checks for async_hooks
# @flag --no-global-search-paths                   disable global module search paths
# @flag --no-warnings                              silence all process warnings
# @flag --node-memory-debug                        Run with extra debug checks for memory leaks in Node.js itself
# @option --openssl-config <file>                  load OpenSSL configuration from the specified file (overrides OPENSSL_CONF)
# @flag --openssl-legacy-provider                  enable OpenSSL 3.0 legacy provider
# @flag --openssl-shared-config                    enable OpenSSL shared configuration
# @flag --pending-deprecation                      emit pending deprecation warnings
# @option --policy-integrity <value>               ensure the security policy contents match the specified integrity
# @flag --preserve-symlinks                        preserve symbolic links when resolving
# @flag --preserve-symlinks-main                   preserve symbolic links when resolving the main module
# @flag -p --print*                                evaluate script and print result
# @flag --prof                                     Generate V8 profiler output.
# @flag --prof-process                             process V8 profiler output generated using --prof
# @option --redirect-warnings <file>               write warnings to file instead of stderr
# @flag --report-compact                           output compact single-line JSON
# @option --report-directory <dir>                 define custom report pathname.
# @option --report-dir <dir>                       define custom report pathname.
# @option --report-filename <value>                define custom report file name.
# @flag --report-on-fatalerror                     generate diagnostic report on fatal (internal) errors
# @flag --report-on-signal                         generate diagnostic report upon receiving signals
# @option --report-signal <value>                  causes diagnostic report to be produced on provided signal, unsupported in Windows.
# @flag --report-uncaught-exception                generate diagnostic report on uncaught exceptions
# @option -r --require <value>                     module to preload (option can be repeated)
# @option --secure-heap <value>                    total size of the OpenSSL secure heap
# @option --secure-heap-min <value>                minimum allocation size from the OpenSSL secure heap
# @option --snapshot-blob <value>                  Path to the snapshot blob that's either the result of snapshotbuilding, or the blob that is used to restore the application state
# @flag --test                                     launch test runner on startup
# @option --test-name-pattern <value>              run tests whose name matches this regular expression
# @flag --test-only                                run tests with 'only' option set
# @flag --throw-deprecation                        throw an exception on deprecations
# @option --title <value>                          the process title to use on startup
# @option --tls-cipher-list <value>                use an alternative default TLS cipher list
# @option --tls-keylog <file>                      log TLS decryption keys to named file for traffic analysis
# @flag --tls-max-v1.2                             set default TLS maximum to TLSv1.2 (default: TLSv1.3)
# @flag --tls-max-v1.3                             set default TLS maximum to TLSv1.3 (default: TLSv1.3)
# @flag --tls-min-v1.0                             set default TLS minimum to TLSv1.0 (default: TLSv1.2)
# @flag --tls-min-v1.1                             set default TLS minimum to TLSv1.1 (default: TLSv1.2)
# @flag --tls-min-v1.2                             set default TLS minimum to TLSv1.2 (default: TLSv1.2)
# @flag --tls-min-v1.3                             set default TLS minimum to TLSv1.3 (default: TLSv1.2)
# @flag --trace-atomics-wait                       (deprecated) trace Atomics.wait() operations
# @flag --trace-deprecation                        show stack traces on deprecations
# @option --trace-event-categories <value>         comma separated list of trace event categories to record
# @option --trace-event-file-pattern <value>       Template string specifying the filepath for the trace-events data, it supports ${rotation} and ${pid}.
# @flag --trace-exit                               show stack trace when an environment exits
# @flag --trace-sigint                             enable printing JavaScript stacktrace on SIGINT
# @flag --trace-sync-io                            show stack trace when use of sync IO is detected after the first tick
# @flag --trace-tls                                prints TLS packet trace information to stderr
# @flag --trace-uncaught                           show stack traces for the `throw` behind uncaught exceptions
# @flag --trace-warnings                           show stack traces on process warnings
# @flag --track-heap-objects                       track heap object allocations for heap snapshots
# @option --unhandled-rejections[strict|warn|none] <value>  define unhandled rejections behavior.
# @flag --use-bundled-ca                           use bundled CA store (default)
# @option --use-largepages[off|on|silent] <value>  Map the Node.js static code to large pages.
# @flag --use-openssl-ca                           use OpenSSL's default CA store
# @flag --v8-options                               print V8 command line options
# @option --v8-pool-size <value>                   set V8's thread pool size
# @flag -v --version                               print Node.js version
# @flag --watch                                    run in watch mode
# @option --watch-path <value>                     path to watch
# @flag --watch-preserve-output                    preserve outputs on watch mode restart
# @flag --zero-fill-buffers                        automatically zero-fill all newly allocated Buffer and SlowBuffer instances
# @arg file
# @arg args*

_module_os_signal() {
    cat <<-'EOF'
ABRT	Abnormal termination
ALRM	Virtual alarm clock
BUS	BUS error
CHLD	Child status has changed
CONT	Continue stopped process
FPE	Floating-point exception
HUP	Hangup detected on controlling terminal
ILL	Illegal instruction
INT	Interrupt from keyboard
KILL	Kill, unblockable
PIPE	Broken pipe
POLL	Pollable event occurred
PROF	Profiling alarm clock timer expired
PWR	Power failure restart
QUIT	Quit from keyboard
SEGV	Segmentation violation
STKFLT	Stack fault on coprocessor
STOP	Stop process, unblockable
SYS	Bad system call
TERM	Termination request
TRAP	Trace/breakpoint trap
TSTP	Stop typed at keyboard
TTIN	Background read from tty
TTOU	Background write to tty
URG	Urgent condition on socket
USR1	User-defined signal 1
USR2	User-defined signal 2
VTALRM	Virtual alarm clock
WINCH	Window size change
XCPU	CPU time limit exceeded
XFSZ	File size limit exceeded
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"