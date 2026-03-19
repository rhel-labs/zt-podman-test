#!/bin/bash
# Setup for Containerfile module

# Clean up any previous work
rm -rf /root/webapp
podman rm -f webapp-test 2>/dev/null || true
podman rmi webapp:v1 2>/dev/null || true

# Create webapp directory
mkdir -p /root/webapp
cd /root/webapp

exit 0
