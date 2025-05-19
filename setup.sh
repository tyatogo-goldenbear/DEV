#!/bin/bash
# Setup script for tyatogo-goldenbear/DEV environment
# This script creates a Python virtual environment and installs
# any dependencies found in requirements.txt if it exists.
set -e

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip

if [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

echo "Development environment setup complete."
