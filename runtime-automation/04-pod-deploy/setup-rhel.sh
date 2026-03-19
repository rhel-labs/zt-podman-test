#!/bin/bash
# Setup for pod deployment module

# Clean up any previous pods and containers
podman pod rm -f webapp-pod 2>/dev/null || true
podman rm -f database webapp 2>/dev/null || true
podman rmi webapp:v2 2>/dev/null || true

# Ensure webapp:v1 exists from previous module
cd /root/webapp || exit 1

exit 0
