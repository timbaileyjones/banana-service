#!/bin/bash
set -e
cd mu && make && cd -    # build the latest mu

# run mu
/home/tim/go/src/github.com/stelligent/mu/.release/mu-linux-amd64  svc deploy acceptance 

#
# show difference in run outpu
#
#diff -r /tmp/mu-cloudformation-orig  /tmp/mu-cloudformation

