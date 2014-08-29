# How to: install ubuntu for devices
* http://developer.ubuntu.com/start/ubuntu-for-devices/installing-ubuntu-for-devices/
* Download Source: https://wiki.ubuntu.com/Touch/AndroidDevel

## Problems
On Ubuntu 12.04 64-bit, phablet-tools can't install.

error message:
>The following packages have unmet dependencies:<br>
>phablet-tools : Depends: click but it is not installable<br>
>Recommends: ubuntu-dev-tools but it is not going to be installed`<br>
>E: Unable to correct problems, you have held broken packages.<br>

Solution: http://bagustris.wordpress.com/2013/02/24/how-to-install-ubuntu-sdk-in-ubuntu-12-04-64bit/

During compile, need to install gcc-4.8
* ref: http://askubuntu.com/questions/271388/how-to-install-gcc-4-8-in-ubuntu-12-04-from-the-terminal

*sudo apt-get install python-software-properties
*sudo add-apt-repository ppa:ubuntu-toolchain-r/test
*sudo apt-get update
*sudo apt-get install gcc-4.8
*sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50

sudo apt-get install lib32stdc++-4.8-dev

sudo apt-get install libg++-4.8-dev

sudo apt-get install lib32gcc-4.8-dev

sudo apt-get install libgcc-4.8-dev