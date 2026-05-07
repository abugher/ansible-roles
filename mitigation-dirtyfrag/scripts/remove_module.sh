#!/bin/bash

module="${1}"

if lsmod | grep -q -E "^${module}( |\$)"; then
  rmmod "${module}"
fi
