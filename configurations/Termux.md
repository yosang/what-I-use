# Installation
Install termux from playstore or obtainium

Then immidiately do `pkg update -y && pkg upgrafe -y` to update everything.

# Access to files
We want to give termux access to the phone files with `termux-setup-storage`

# Install Git
With termux running, install git with `pkg install git`

# Git - SSH authentication

## shh
Run `pkg install openssh`, if its not installed.

## shh-keygen
Create a new key with `ssh-keygen -C [githubemail]` 

Type ed25519 is default, if we want to use a different type like rsa we would add the flag `-t rsa`
## copy
Public key and secret key are both stored in `~/.shh`

```sh
~ $ ls .ssh/
authorized_keys  id_ed25519  id_ed25519.pub
```

Copy the key with `cat id_ed25519.pub` and add it to github under `Settings > SSH > Add key`

# Check remotes
Check with `git remote -v` 

The `.git` remotes should not be `https`, but `ssh` so make sure the remotes are set right otherwise we will have to change them.

- `https` - `https://github.com/username/repo.git`
- `ssh` . `user@host:username/repo.git`

We can change them with `git remote set-url branch user@host:username/repo.git`

```sh
~/.../Notes/what-I-use $ git remote -v
origin  git@github.com:yosang/what-I-use.git (fetch)
origin  git@github.com:yosang/what-I-use.git (push)
```
## git push
Do a push and go through the first time authentication and fingerprint confirmation