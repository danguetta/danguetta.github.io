# Run installer like this:
# bash installer.sh
# 
# Uploaded to something like s3, you can run it like so:
# curl -sSL https://xlwings.s3.amazonaws.com/xlkitlearn/installer.sh | bash
#
# In case of permission errors use 'sudo bash installer.sh' or if hosted:
# curl -sSL https://xlwings.s3.amazonaws.com/xlkitlearn/installer.sh | sudo bash

set -e  # stop at errors

MINICONDA_VERSION="Miniconda3-py38_4.8.3-MacOSX-x86_64"
INSTALL_DIR="${HOME}/xlkitlearn"

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

if [ -z "$CONDA_DEFAULT_ENV" ];then
    # We're not in an activated conda environment and installation can start
    printf "${YELLOW}Cleaning up existing installation${NC}\n"
    rm -rf "$INSTALL_DIR" || true
    if [ -f /tmp/"$MINICONDA_VERSION".sh ]; then
        printf "${YELLOW}Using Miniconda from /tmp/"$MINICONDA_VERSION".sh${NC}\n"
    else
        printf "${YELLOW}Downloading Miniconda${NC}\n"
        curl -L https://repo.anaconda.com/miniconda/"$MINICONDA_VERSION".sh -o /tmp/"$MINICONDA_VERSION".sh
    fi
    printf "${YELLOW}Installing Miniconda${NC}\n"
    bash /tmp/"$MINICONDA_VERSION".sh -u -b -p "$INSTALL_DIR"
    printf "${YELLOW}Installing packages${NC}\n"
    "$INSTALL_DIR"/bin/conda install pandas=1.0.5 patsy=0.5.1 numpy=1.18.5 scikit-learn=0.23.1 matplotlib=3.2.2 seaborn=0.10.1 nltk=3.5 requests=2.24.0 statsmodels=0.11.1 appscript=1.1.0 psutil=5.7.0 cryptography=2.9.2 xlrd=1.2.0 -y
    "$INSTALL_DIR"/bin/pip install --no-deps xlwings==0.19.5
    printf "${YELLOW}Installing xlwings script${NC}\n"
    "$INSTALL_DIR"/bin/xlwings runpython install
    printf "${YELLOW}Copying Data${NC}\n"
    mkdir -p "$INSTALL_DIR"/data
    echo 10 > "$INSTALL_DIR"/data/version
    printf "${GREEN}Successfully installed XLKitLearn!${NC}\n"
else
    printf "${RED}Please deactivate any conda envs by running 'conda deactivate' before running this command again!${NC}\n"
    exit 1
fi
