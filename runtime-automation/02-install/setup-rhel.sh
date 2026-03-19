#!/bin/bash
# Setup for install module
# Ensure clean state

# Remove any test containers that might exist
podman rm -f $(podman ps -aq) 2>/dev/null || true

exit 0
