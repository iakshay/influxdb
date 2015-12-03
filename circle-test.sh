#!/bin/bash
#
# This is the InfluxDB test script for CircleCI, it is a light wrapper around ./test.sh.

# Get dir of script and make it is our working directory.
DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
cd $DIR

# Make sure the parallelism in CircleCI project settings matches the number of
# environments in ./test.sh since each CircleCI node runs one environment.
OUTPUT_DIR="$CIRCLE_ARTIFACTS" ./test.sh "$CIRCLE_NODE_INDEX"

