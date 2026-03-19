#!/bin/bash
USER=rhel

echo "Adding wheel" > /root/post-run.log
usermod -aG wheel rhel

echo "Setup Podman lab" > /tmp/progress.log

chmod 666 /tmp/progress.log

# Create webapp directory structure
mkdir -p /home/rhel/webapp
chown rhel:rhel /home/rhel/webapp

echo "Podman lab setup complete" >> /tmp/progress.log
