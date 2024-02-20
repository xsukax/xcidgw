#!/bin/bash
echo "Checking if wget Installed"
if command -v wget > /dev/null 2>&1; then
    echo "wget Found .. Getting xcidgw Installer"
    wget https://raw.githubusercontent.com/xsukax/xcidgw/main/xcidgw.cpp -O /tmp/xcidgw.cpp
else
    echo "wget Not Found .. Installing wget"
    sudo apt install wget -y
    echo "Getting xcidgw Installer"
    wget https://raw.githubusercontent.com/xsukax/xcidgw/main/xcidgw.cpp -O /tmp/xcidgw.cpp
fi
echo "Checking if g++ Compiler Installed"
if command -v g++ > /dev/null 2>&1; then
    echo "g++ Compiler Found .. Compiling xcidgw Application"
    sudo g++ /tmp/xcidgw.cpp -o /sbin/xcidgw
    echo "xcidgw Installed .. Just type xcidgw command in Terminal"

else
    echo "g++ Compiler Not Found .. Install g++ Compiler via build-essential"
    sudo apt install build-essential -y
    echo "Compiling xcidgw Application"
    sudo g++ /tmp/xcidgw.cpp -o /sbin/xcidgw
    echo "xcidgw Installed .. Just type xcidgw command in Terminal"
fi
