# Installation
There is a repository for VSCODE for Fedora/Rhel distros, just need to add the repository and install it. This is the recommended way as it supports updates

[Docs](https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions)

1. Install key and add repo
```sh
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
```

2. update package cache and install the package from the repo
```sh
dnf check-update
sudo dnf install code
```

Alternativery, download the `rpm` binary

https://code.visualstudio.com/Download

# Configuration
I personally like to create folders and files with key shortcuts rather than clicking.

Press `Shift+Ctrl+P` to open the command palette, type in `JSON` and select `Preferences` and select `Preferences: Open Keyboard Shortcuts (JSON)` and paste in the following setup:

```json
[
    {
        "key": "alt+a",
        "command": "explorer.newFile",
        "when": "explorerViewletFocus"
    },
    {
        "key": "shift+alt+a",
        "command": "explorer.newFolder",
        "when": "explorerViewletFocus"
    }
]
```