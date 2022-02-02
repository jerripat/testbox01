#!/bin/bash

# this creates random passwords
PASSWORD="${RANDOM}"
echo "${PASSWORD}"
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"
PASSWORD=$(date +%s)
echo 'New Password is : ' "${PASSWORD}"