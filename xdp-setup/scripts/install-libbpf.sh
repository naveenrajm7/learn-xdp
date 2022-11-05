#!/bin/bash

# Get XDP tutorial with libbpf (sub module)
git clone --recurse-submodules https://github.com/xdp-project/xdp-tutorial

# Update packges
sudo apt-get update

# Install dependencies
sudo DEBIAN_FRONTEND=noninteractive apt install -y clang llvm libelf-dev libpcap-dev gcc-multilib build-essential

# To install the ‘perf’ utility
sudo DEBIAN_FRONTEND=noninteractive apt install -y linux-tools-$(uname -r)

# Kernel headers dependency ( Can choose to shadow distro headers and use actual kernel headers)
sudo DEBIAN_FRONTEND=noninteractive apt install -y linux-headers-$(uname -r)

# Recommended tools, bpftool , tcpdump
sudo DEBIAN_FRONTEND=noninteractive apt install -y linux-tools-common linux-tools-generic
sudo apt install -y tcpdump