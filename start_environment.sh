#!/usr/bin/env bash

# Checking if running from inside virtual environment
#  and activating if not
[ -z "${VIRTUAL_ENV}" ] && source local_spark_venv/bin/activate

# Setting Spark Home
export SPARK_HOME="$(python3 -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib())')/pyspark"

# Setting Python to run in Spark Workers
export PYSPARK_PYTHON='python3'

# Setting PySpark to run in Jupyter Notebook
# export PYSPARK_DRIVER_PYTHON='jupyter'
# export PYSPARK_DRIVER_PYTHON_OPTS='notebook'

# pyspark

jupyter notebook

