# setup_ubuntu_wsl_python
Tutorial for setting up latest Ubuntu for SW development with python on a Windows machine

# Windows Side
## Install WSL
If not done yet, checkout how to install WSL on your machine here:
[Official Microsoft Tutorial](https://learn.microsoft.com/en-us/windows/wsl/install)

## Install the specific  linux distribution 
Search for the distribution you want to install.
```
wsl --list --online
```

We'll go for the Ubuntu 22.04.
```
wsl --install -d Ubuntu-22.04 2
```
The `2` at the end allows to setup this distribution under WSL version 2 (and not WSL 1).

That's it!

# Linux side
## Update the distribution packages
```
sudo apt update
sudo apt upgrade
```

## Update git
According to [this page](https://unix.stackexchange.com/questions/33617/how-can-i-update-to-a-newer-version-of-git-using-apt-get), all you need to do is:
```
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com A1715D88E1DF1F24 40976EAF437D05B5 3B4FE6ACC0B21F32 A6616109451BBBF2
sudo apt-get update
sudo apt-get install git -y
git --version
```

That's it!

## Intall Python
### First install potentially missing dependencies
#### SSL for PIP
```

```

### Install Python
To setup python, my prefered way is the following [script (local to this repo)](scripts/install_python.sh).


