#!/bin/bash
# =============================================================================
# PIPseeker Pipeline
# Description: Download PIPseeker
# =============================================================================

# =============================================================================
# STEP 1 — Download and Install PIPseeker
# =============================================================================

# 1) Download the Linux package from:
#    https://www.fluentbio.com/resources/pipseeker-downloads

# 2) Open a terminal window and navigate to your downloads directory
cd ~/Downloads

# 3) Uncompress the package
tar -zxvf pipseeker-v3.1.2-linux.tar.gz

# 4) Make a directory and move the executable pipseeker into the directory
mkdir ~/PIPseeker
mv pipseeker-v3.1.2-linux/pipseeker ~/PIPseeker

# 5) Turn on executable permissions
chmod +x ~/PIPseeker/pipseeker

