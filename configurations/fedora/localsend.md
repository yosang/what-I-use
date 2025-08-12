# Installation
FROM https://localsend.org/download?os=linux

## flatpak
```sh
flatpak install flathub org.localsend.localsend_app
flatpak run org.localsend.localsend_app
```

## Firewall
Make sure incoming requests are not blocked by firewoll, on fedora we can see if the firewall is running with 

```sh
sudo firewall-cmd --state  # For firewalld
```

Then we need to add the LocalSend both `tcp` and `udp` ports to the firewall. Localsends port is `53317`. To add these to the firewall we do

```sh
sudo firewall-cmd --permanent --add-port=53317/tcp
sudo firewall-cmd --permanent --add-port=53317/udp
```

We also need to reload the changes

```sh
sudo firewall-cmd reload
```

Finally we can list all the changes with

```sh
sudo firewall-cmd --list-all
```