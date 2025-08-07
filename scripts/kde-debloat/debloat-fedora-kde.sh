#!/bin/bash

# Script to debloat Fedora 42 KDE Plasma by removing unnecessary packages

# List of applications to remove
UNNECESSARY_APPS=(
    "konqueror"                    # Obsolete web browser and file manager
    "kmail"                        # KDE email client
    "kwrite"                       # Simple KDE text editor
    "kmailtransport-akonadi"       # Mail transport component for Akonadi
    "libkf5templateparser5"        # Template parsing library
    "libkf5contacts-data"          # KDE PIM contacts data
    "pim-sieve-editor"             # Sieve email filter editor
    "libkf5ksieve-data"            # Data for KSiever library
    "xterm"                        # Lightweight terminal emulator
    "goldendict"                   # Offline dictionary/translator
    "ibus"                         # Input method framework (general)
    "ibus-gtk"                     # GTK support for IBus
    "ibus-gtk3"                    # GTK3 support for IBus
    "ibus-gtk4"                    # GTK4 support for IBus
    "python3-ibus"                 # Python bindings for IBus
    "ibus-hangul"                  # Korean input method
    "mozc"                         # Japanese input method
    "fcitx5"                       # Alternative input method framework
    "fcitx5-pinyin"                # Pinyin input method for Chinese
    "fcitx5-chinese-addons"        # Chinese input addons for Fcitx5
    "fcitx5-chewing"               # Chewing input method for Chinese
    "im-chooser"                   # Input method selector
    "mlterm"                       # Multilingual terminal emulator
    "korganizer"                   # Calendar
    "kaddressbook"                 # Contact manager
    "akregator"                    # RSS reader
    "kdeconnect"                   # Connect phone and laptop
    "kdenlive"                     # Video editor
    "kpat"                         # Solitaire game
)

# List of essential packages to keep
ESSENTIAL_PACKAGES=(
    "plasma-desktop"               # KDE Plasma desktop environment
    "plasma-workspace"             # Core Plasma components
    "kde-baseapps"                 # Base KDE applications
    "sddm"                         # Login manager used by KDE
)

# Function to mark packages as manually installed
install_applications() {
    for pkg in "${ESSENTIAL_PACKAGES[@]}"; do
        echo "Installing $pkg - essentials..."
        sudo dnf install -y "$pkg"
    done
}

# Function to remove unnecessary applications
remove_applications() {
    for app in "${UNNECESSARY_APPS[@]}"; do
        echo "Removing $app..."
        sudo dnf remove -y "$app"
    done
}

clean_up() {
    # Clean up orphaned packages and cache
    echo "Cleaning up..."
    
    sudo dnf autoremove -y
    sudo dnf clean all
}

# Execute the functions
install_applications
remove_applications
clean_up

echo "Debloating process completed. It is recommended to restart the system."