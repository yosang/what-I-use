# Installation
## Ubuntu/Debian
Debian use `apt`, installing docker is done with `sudo apt install docker.io`, or by downloading their deb.

follow the docks
- docker repository
- dockerdocks recommends using their repository, so you need to add that first
- https://docs.docker.com/engine/install/fedora/ - docker

## fedora rpm
- on fedora we can install directly from the rpm
- Red Hat uses `dnf`, installing docker here is done with `sudo dnf install docker-cli containerd`
    - `docker-cli` is what we need to interact with docker, using `docker` command
    - `containerd` - is the runtime, or the engine itself.
- https://docs.fedoraproject.org/en-US/quick-docs/installing-docker/ - fedora

## Start Daemon
Once docker is installed we need to start the service

```bash
sudo systemctl start docker
```

## Enable Daemon
To make sure the docker daemon starts on reboot we need to enable it

```bash
sudo systemctl enable docker
```
# Configuration
# Status Daemon
Lets make sure the docker daemon is both enabled and active

```bash
sudo systemctl enable docker
```

## Test it
We can test that everything works with `sudo docker run hello-world`
This should download an image from the hub and create a container from it

## Sudo
Once the daemon has started we can now use the docker command.

However, the `docker` command requires root access to work, so off the bat we wont be able to use it without `sudo`.

In order to fix that, we need to add our current user to the `docker` group.

First we check if a docker group was created when docker was installed
- groups can be found in the `/etc` directory

```bash
cat /etc/group | grep docker
yosang@localhost:/$ cat /etc/group | grep docker
docker:x:978:
```

Seeing that group exists, it means docker created this group for us, now we just need to add the user to the group

We do that with the following command
`sudo usermod -a -G docker yosang`
- here the `-a` flag means append, which means that we are going to append the user to this group, without removing the user from previous groups
- the `-G` is for a list of groups to add the user to, notice that its a capital G and not lower case g, a lower case g is a different flag `-g` that will asssign the user to the group as a primary group instead, which is not what we want.

To make sure we understand, we can do a quick `man usermod`
-        -G, --groups GROUP1[,GROUP2,...[,GROUPN]]]
           A list of supplementary groups which the user is also a
           member of. Each group is separated from the next by a
           comma, with no intervening whitespace. The groups must
           exist.

           If the user is currently a member of a group which is
           not listed, the user will be removed from the group.
           This behaviour can be changed via the -a option, which
           appends the user to the current supplementary group
           list.

Once we have assigned the current user to the group we can check that the user has the group listed with `groups $USER`

```bash
yosang@localhost:~$ groups $USER
yosang : yosang wheel docker
```

And there we see docker

## Reboot
- For this to take full effect, we do a simple `reboot`
- Now we can test with `docker images`, and see what happens

```bash
yosang@localhost:~$ docker images
REPOSITORY    TAG       IMAGE ID       CREATED        SIZE
hello-world   latest    74cc54e27dc4   6 months ago   10.1kB
```

Perfect, it shows an image of hello-world, which Ive previously used to test docker.

To clean things up, we are going to remove this image with `docker rmi 74c`