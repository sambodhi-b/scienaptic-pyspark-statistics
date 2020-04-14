#!/usr/bin/env bash

echoerr() { echo "$@" 1>&2; exit 1; }

python3 -m venv local_spark_venv \
    || echoerr "ERROR: Virtual Environment Creation Failed"

source local_spark_venv/bin/activate \
    || echoerr "ERROR: Virtual Environment Activation Failed"

pip install -r requirements.txt \
    || echoerr "ERROR: Installing Required Packages Failed"

echo ""
echo ""
echo "SUCCESS: Environment Created"
echo "Start Environment using start_environment.sh"
