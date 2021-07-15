#!/bin/bash

set -e

TESTFILE=$1
DOCKER_IP=$2

rm -f ${TESTFILE} 
touch ${TESTFILE} 

sleep 10

for F in `ls ${WORKSPACE}/CI/test-*.sh`; do 
  /bin/bash ${F} ${DOCKER_IP} 

done | tee ${TESTFILE} 

exit ${PIPESTATUS[0]}