#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Update the system
echo "Updating the system..."
sudo apt update && sudo apt upgrade -y

# Install dependencies
echo "Installing necessary dependencies..."
sudo apt install -y openjdk-17-jdk xvfb x11vnc novnc websockify wget

# Set up a virtual display
echo "Setting up a virtual display..."
Xvfb :1 -screen 0 1024x768x24 &
export DISPLAY=:1

# Download the official Minecraft Launcher
echo "Downloading the official Minecraft Launcher..."
wget -q https://launcher.mojang.com/download/Minecraft.deb -O Minecraft.deb

# Install the Minecraft Launcher
echo "Installing Minecraft Launcher..."
sudo apt install -y ./Minecraft.deb

# Set up and start VNC server
echo "Starting VNC server on port 5900 (password: 1234)..."
x11vnc -display :1 -rfbport 5900 -forever -nopw -passwd 1234 &

# Start noVNC
echo "Starting noVNC on port 8080..."
websockify --web /usr/share/novnc 8080 localhost:5900 &

# Start the Minecraft Launcher
echo "Starting the Minecraft Launcher..."
minecraft-launcher &

echo "Setup is complete. Open the Minecraft Launcher through your browser by connecting to the forwarded noVNC port (port 8080)."
