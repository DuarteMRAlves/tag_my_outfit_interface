#!/bin/bash

PACKAGE_NAME="fashion_contract"
INIT_FILE="${PACKAGE_NAME}/__init__.py"

# Create package dir
[ ! -d ${PACKAGE_NAME} ] && mkdir -p ${PACKAGE_NAME} || echo "${PACKAGE_NAME} already exists"

# Create __init__.py
[ ! -f ${INIT_FILE} ] && touch ${INIT_FILE} || echo "${INIT_FILE} already exists"

# Generate grpc sources from project root
echo "Generating grpc code"
python -m grpc_tools.protoc -I../proto/ --python_out=. --grpc_python_out=. ../proto/fashion_contract/service.proto
