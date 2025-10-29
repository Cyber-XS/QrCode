# QrCode
A fast and reliable tool that lets you create custom QR codes for any URL, text, or command in seconds. Whether you’re sharing links, digital menus, app downloads, or Wi-Fi access, this QR generator turns your content into a scannable, stylish code. Download in multiple formats and share instantly — simple, secure, and versatile!

## 📺 Video Guide for Setup

[![Watch on YouTube](https://img.youtube.com/vi/aoVxGaLKkU4/maxresdefault.jpg)](https://www.youtube.com/watch?v=aoVxGaLKkU4)

# 🔳 QR Generator + Command Executor Tool

A simple Bash tool that can:

🧠 Detect whether your input is a URL, command, or plain text

🖼️ Generate a QR code for it (shown in terminal + saved as image)

💻 Execute Linux commands and convert their output into QR code

Perfect for quick sharing, encoding data, or experimenting with Bash automation.

## ⚙️ Features


✅ Detects and handles URL / Command / Text automatically

✅ Displays QR code directly in the terminal (ASCII mode)

✅ Saves a PNG QR code (qrcode.png)

✅ Executes Linux commands and generates QR from their output

✅ Works on Garuda, Arch, Debian, Ubuntu, and most Linux distros

## 🧰 Requirements

Make sure qrencode is installed on your system.

**For Arch / Garuda:**

    sudo pacman -S qrencode

**For Debian / Kali:**

    sudo apt install qrencode

## ⚙️ Setup

**1. Clone this repository**

    git clone https://github.com/Cyber-XS/QrCode.git
    cd QrCode

**2. Make the script executable**

    chmod +x qrcode.sh
    
**3. Run the tool**

    ./qrcode.sh


## 💡 Usage Examples

**Generate QR from a URL**

    Enter input: https://example.com
    Detected URL.
    (ASCII QR displayed)
    ✅ QR code saved as qrcode.png

**Generate QR from a Command**

    Enter input: ls
    Detected command. Executing...
    qrcode.sh
    Generating QR from command output...
    (ASCII QR displayed)
    ✅ QR code saved as qrcode.png

**Generate QR from Text**

    Enter input: Hello Cyber XS
    Detected text:
    --------------------
    Hello Cyber XS
    --------------------
    (ASCII QR displayed)
    ✅ QR code saved as qrcode.png

## 🗂️ File Output

All generated QR codes are saved as:

    qrcode.png


