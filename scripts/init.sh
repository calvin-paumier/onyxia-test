#!/bin/bash

WORK_DIR="/home/onyxia/work"
CLONE_DIR="${WORK_DIR}/repo-git"

# Clone course repository
REPO_URL="https://github.com/calvin-paumier/onyxia-test"
git clone --depth 1 $REPO_URL $CLONE_DIR

# Put relevant notebook in formation dir
cp "${CLONE_DIR}/notebooks/hello_world.ipynb" "${WORK_DIR}"

# Remove useless repository
rm -rf $CLONE_DIR

# Open the relevant notebook when starting Jupyter Lab
echo "c.LabApp.default_url = '/lab/tree/hello_world.ipynb'" >> /home/onyxia/.jupyter/jupyter_server_config.py
