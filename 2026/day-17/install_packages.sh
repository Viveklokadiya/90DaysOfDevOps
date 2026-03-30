#!/bin/bash

packages=("nginx" "wget" "curl")

for package in "${packages[@]}"; do
    if dpkg -s "$package" &> /dev/null; then
        echo "$package is already installed."
    else
        echo "Installing $package..."
        sudo apt-get install -y "$package"
    fi
done

	
