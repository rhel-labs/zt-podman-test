#!/bin/bash
# Setup for Containerfile module

# Clean up any previous work
rm -rf /home/rhel/webapp
podman rm -f webapp-test 2>/dev/null || true
podman rmi webapp:v1 2>/dev/null || true

# Create webapp directory
mkdir -p /home/rhel/webapp
cd /home/rhel/webapp

exit 0
