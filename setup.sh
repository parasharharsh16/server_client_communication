#!/bin/bash

wget https://bootstrap.pypa.io/get-pip.py -O get-pip.py || exit 1
python get-pip.py || exit 1
pip --version || exit 1

if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt || exit 1
else
    exit 1
fi

rm get-pip.py
