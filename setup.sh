#!/bin/bash

# Step 1: Download the get-pip.py script using wget
echo "Downloading get-pip.py script..."
wget https://bootstrap.pypa.io/get-pip.py -O get-pip.py

if [ $? -ne 0 ]; then
    echo "Failed to download get-pip.py script. Please check your internet connection."
    exit 1
fi

# Step 2: Install pip using the get-pip.py script
echo "Installing pip..."
python get-pip.py

if [ $? -ne 0 ]; then
    echo "pip installation failed. Please check for Python issues."
    exit 1
fi

# Step 3: Verify pip installation
echo "Verifying pip installation..."
pip --version

if [ $? -ne 0 ]; then
    echo "pip not installed correctly."
    exit 1
fi

# Step 4: Install requirements from requirements.txt using pip
if [ -f "requirements.txt" ]; then
    echo "Installing dependencies from requirements.txt..."
    pip install -r requirements.txt

    if [ $? -ne 0 ]; then
        echo "Failed to install dependencies from requirements.txt."
        exit 1
    else
        echo "Dependencies installed successfully."
    fi
else
    echo "requirements.txt file not found in the current directory."
    exit 1
fi

# Step 5: Clean up by removing get-pip.py script
echo "Cleaning up..."
rm get-pip.py

echo "Setup completed successfully."
