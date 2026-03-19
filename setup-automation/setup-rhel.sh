#!/bin/bash
set -e

# Setup script for Podman lab
# This runs when the VM is first provisioned

echo "Setting up Podman lab environment..."

# Ensure podman is installed (should be from packages in instances.yaml)
if ! command -v podman &> /dev/null; then
    echo "Installing Podman..."
    dnf install -y podman buildah skopeo
fi

# Enable and start podman socket for API access
systemctl enable --now podman.socket

# Pull commonly used images to speed up the lab
echo "Pre-pulling container images..."
podman pull registry.access.redhat.com/ubi9/ubi-minimal:latest
podman pull registry.access.redhat.com/ubi9/python-39:latest

# Create webapp directory structure
mkdir -p /root/webapp

echo "Podman lab setup complete!"
