# Installation
Install temux from playstore or obtainium

Then immidiately do `pkg update -y && pkg upgrafe -y` to update everything.

# Access
We want to give termux access to thr phone files with `termux-setup-storage`

# Git
With temux running, install git with `pkg install git`

# Git - SSH authentication

## shh
Run `pkg install openssh`, if its not installed it will be, its alrrady installed it'll say it is

## shh-keygen
Create a new key with `ssh-keygen -C [githubemail]` 

Type ed25519 is default, if we want to use a different type like rsa we would add the flag `-t rsa`
## copy
Public key and secret key are both stored in `~/.shh`

```sh
~ $ ls .ssh/
authorized_keys  id_ed25519  id_ed25519.pub
```

Copy thr key `cat id_ed25519.pub` and add it to github

## Test connection
Use `ssh -T git@github.com` to test connection, the `-T` flag allows us to open a connection without a pseufo terminal interactivity. In simple terms, we are just opening a connection without a terminal.

We should get something like