#!/bin/sh

######################################################################
#<
#
# Function: p6_cicd__debug()
#
#>
######################################################################
p6_cicd__debug() {
    local msg="$1"

    p6_debug "p6_cicd: $msg"
}

######################################################################
#<
#
# Function: p6_cicd_tests_run()
#
#>
######################################################################
p6_cicd_tests_run() {

    p6_test_harness_tests_run "t"
}

######################################################################
#<
#
# Function: p6_cicd_test_benchmark()
#
#>
######################################################################
p6_cicd_test_benchmark() {

    p6_test_bench "$@"
}

######################################################################
#<
#
# Function: p6_cicd_version_bump()
#
#>
######################################################################
p6_cicd_version_bump() {

    p6_version_bump "$@"
}

######################################################################
#<
#
# Function: p6_cicd_tag([file=conf/meta])
#
#  Args:
#	OPTIONAL file - [conf/meta]
#
#>
######################################################################
p6_cicd_tag() {
    local file="${1:-conf/meta}"

    local version=$(p6_version_get "$file")
}

######################################################################
#<
#
# Function: p6_cicd_release()
#
#>
######################################################################
p6_cicd_release() {

    true
}

######################################################################
#<
#
# Function: p6_cicd_install()
#
#>
######################################################################
p6_cicd_install() {

    true
}