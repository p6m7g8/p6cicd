#!/bin/sh

p6_cicd__debug() {
    local msg="$1"

    p6_debug "p6_cicd: $msg"
}

p6_cicd_tests_run() {

    p6_test_harness_tests_run "t"
}

p6_cicd_test_benchmark() {

    p6_test_bench "$@"
}

p6_cicd_version_bump() {

    p6_version_bump "$@"
}

p6_cicd_tag() {
    local file="${1:-conf/meta}"

    local version=$(p6_version_get "$file")
}

p6_cicd_release() {

    true
}

p6_cicd_install() {

    true
}
