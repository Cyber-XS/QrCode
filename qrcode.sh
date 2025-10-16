#!/bin/bash
# QR Generator + Command Executor Tool
# Author: Cyber XS

read -p "Enter input: " input

# Check if qrencode exists
if ! command -v qrencode &> /dev/null; then
    echo "Error: qrencode not installed. Install it using 'sudo pacman -S qrencode' or 'sudo apt install qrencode'"
    exit 1
fi

# Function to generate and show QR code
generate_qr() {
    local data="$1"
    echo "Generating QR code..."
    qrencode -t ANSIUTF8 "$data"
    qrencode -o qrcode.png "$data"
    echo "✅ QR code saved as qrcode.png"
}

# Detect URL
if [[ "$input" =~ ^https?:// ]]; then
    echo "Detected URL."
    generate_qr "$input"
    exit 0
fi

# Detect Linux command
if command -v $(echo "$input" | awk '{print $1}') &>/dev/null; then
    echo "Detected command. Executing..."
    output=$(eval "$input" 2>&1)
    echo "$output"
    echo "Generating QR from command output..."
    generate_qr "$output"
    exit 0
fi

# Otherwise, treat as plain text
echo "Detected text:"
echo "--------------------"
echo "$input"
echo "--------------------"
generate_qr "$input"
