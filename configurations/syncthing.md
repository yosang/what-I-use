# Installation
Install from `dnf`

```sh
sudo dnf install syncthing
```

# Configuration
## 1. Restart the daemon to pickup the service
```sh
sudo systemctl daemon-reload
```
## 2. Enable and start the service one-liner
```sh
sudo systemctl enable --now syncthing@yosang
```
## 3. Check its status
```sh
sudo systemctl status syncthing@yosang
```