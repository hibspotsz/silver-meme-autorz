#!/bin/bash

# Install Python 3.12 (compatible with Playwright 1.40.0)
apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y
apt-get update
apt-get install -y python3.12 python3.12-venv python3.12-dev

# Use Python 3.12 for everything
python3.12 -m pip install --upgrade pip
python3.12 -m pip install -r requirements.txt

# Install Playwright browsers
python3.12 -m playwright install chromium
