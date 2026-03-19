#!/bin/bash
USER=rhel

echo "Adding wheel" > /root/post-run.log
usermod -aG wheel rhel

echo "Setup Podman lab" > /tmp/progress.log

chmod 666 /tmp/progress.log

# Podman should already be installed from packages in instances.yaml
# Pre-pull commonly used images to speed up the lab
echo "Pre-pulling container images..." >> /tmp/progress.log
podman pull registry.access.redhat.com/ubi9/ubi-minimal:latest >> /tmp/progress.log 2>&1
podman pull registry.access.redhat.com/ubi9/python-39:latest >> /tmp/progress.log 2>&1

# Create webapp directory structure
echo "Creating webapp directory..." >> /tmp/progress.log
mkdir -p /home/rhel/webapp
chown rhel:rhel /home/rhel/webapp

echo "Podman lab setup complete" >> /tmp/progress.log
