#!/bin/bash

root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=require.sh
source "$root/../require.sh"

sample_loader="$root/loader.conf"

test_systemd_kernel_parameter_parsing() {
	assert_retval _add_systemd_kernel_parameter "$sample_loader" "psr" 0
	assert_retval _remove_systemd_kernel_parameter "$sample_loader" "psr" 0
}

# shellcheck source=unit.sh
source "$root/../unit.sh"
