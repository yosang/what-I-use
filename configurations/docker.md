# Linux
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