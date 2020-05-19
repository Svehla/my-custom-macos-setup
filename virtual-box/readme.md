# emulating of BSD/linux system


I use `virtualbox` & `docker` for VM linux systems...

## running and connecting to VM

I control OS via SSH from my base macos

### docker

```bash
docker exec {image} -it /bin/bash
```

### Virtual-Box
VM setting
I allocate 2gb ram for VM (depends on your preferences)

after installing linux VMs
1) shut down VM instance
2) setings -> network -> NAT -> advanced -> port forwarding and set it like:

| name | protocol | host IP   | host port | guest IP | guest Port |
|------|----------|-----------|-----------|----------|------------|
| ssh  | TCP      | 127.0.0.1 |  2222     |          | 22         |
|      |          |           |           |          |            |

source: https://medium.com/@pierangelo1982/setting-ssh-connection-to-ubuntu-on-virtualbox-af243f737b8b

3) relounch your VM and set:

```bash
sudo apt-get install openssh-server
```
source: https://forums.virtualbox.org/viewtopic.php?f=8&t=20016

4) connect from local maching
```
ssh -p 2222 {username}@127.0.0.7

5) relounch VM by headless start (small black arrow next to green )

6) config ssh keys
ssh-keygen
copy SSH publi key to BE authorized_keys

5) config VM via `ansible`
TODO: add `ansible`
run pupper/smth like that for configuration VM and add to this repository

sudo apt install vim
apps:
- curl
- git
- python
- gcc
- vim (add tutorial for theme)
- zsh
- oh my zsh (copy my .zshrc)
- VSCode ssh extension with VSCode server?
