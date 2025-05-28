#!/bin/bash

set -ex

DOCKER_IP=$1

TESTOUT=/tmp/tryapl-test.log
rm -f ${TESTOUT}
touch ${TESTOUT}

echo "Testout is : ${TESTOUT}"


## test page:
if ! curl -s --retry 10 --retry-delay 5 -q http://${DOCKER_IP}:8080/ | grep "<title>TryAPL</title>" >/dev/null ; then
    echo "FAILED** Page Failed" | tee -a ${TESTOUT}
    exit 1
fi

if grep "FAILED**" ${TESTOUT} >/dev/null 2>&1; then
    exit 1
fi
