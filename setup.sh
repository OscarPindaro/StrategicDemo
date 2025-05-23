set -e

# create addons folder
mkdir -p addons

# install gdformat
pip3 install gdtoolkit

# install pre commit if you don't have it
pip install pre-commit --no-input

# Initialize pre-commit in your repository
pre-commit install 

# To update hooks to the latest version
pre-commit autoupdate

# unit testing
git submodule add git@github.com:bitwes/Gut.git gut
ln -s $(pwd)/gut/addons/gut addons/gut
git submodule update --init --recursive