#!/bin/bash

NAMESPACE_NAME="outfit_tagging"
SUBPACKAGE_NAME="${NAMESPACE_NAME}/interface"
INIT_FILE="${SUBPACKAGE_NAME}/__init__.py"

# Create namespace dir
echo "Creating namespace dir"
([ ! -d ${NAMESPACE_NAME} ] && mkdir -p ${NAMESPACE_NAME}) || (echo "${NAMESPACE_NAME} already exists" && exit 1)

# Create subpackage dir
echo "Creating subpackage dir"
([ ! -d ${SUBPACKAGE_NAME} ] && mkdir -p ${SUBPACKAGE_NAME}) || (echo "${SUBPACKAGE_NAME} already exists" && exit 1)

# Create __init__.py
echo "Creating __init__.py file"
([ ! -f ${INIT_FILE} ] && touch ${INIT_FILE}) || (echo "${INIT_FILE} already exists" && exit 1)

# Generate grpc sources from project root
echo "Generating grpc code"
python -m grpc_tools.protoc -I../proto/ --python_out=. --grpc_python_out=. ../proto/outfit_tagging/interface/service.proto
