# Quick install RISCOS under Linux

 [Installing on Linux on Apple M1/M2/M3/M4 in a virtual machine or Asahi Linux.](#installing-on-linux-on-apple-m1m2m3m4-in-a-virtual-machine-or-asahi-linux)<br>
 [Installing RISCOS on the RPi 5 running Debian](#installing-riscos-on-the-rpi-5-running-debian)<br>
 [Notes](#notes)

## Installing on Linux on Apple M1/M2/M3/M4 in a virtual machine or Asahi Linux.
Patches and tools to setup RISC OS under Linux on platforms like Apple M1.

Install Debian 12 in UTM for Apple.

On Linux install the dependancies:

```
sudo apt install attr bash bubblewrap build-essential g++ gcc git libattr1 libattr1-dev libsdl2-dev libseccomp-dev libseccomp2 make ninja-build pkg-config libglut-dev
```

Install this repository:
```
git clone https://github.com/janrinze/RISCOSonM1.git
```

Run the installer:

```
cd RISCOSonM1
./install_M1.sh
```
## Installing RISCOS on the RPi 5 running Debian
For RPi5 you need to be running kernel8.img at boot.
Ensure you have in ```/boot/firmware/config.txt``` :

```kernel=kernel8.img```

Reboot the RPi5 after this change.

install the dependancies:

```
sudo apt install attr bash bubblewrap build-essential g++ gcc git libattr1 libattr1-dev libsdl2-dev libseccomp-dev libseccomp2 make ninja-build pkg-config libglut-dev
```

Install this repository:
```
git clone https://github.com/janrinze/RISCOSonM1.git
```

Run the installer:

```
cd RISCOSonM1
sudo sysctl vm.mmap_min_addr=12288
./install_RPi5.sh
```
# Notes:
The file ``HardDisc4.util`` is an older version of the HardDisk4.util from https://www.riscosopen.org/content/downloads/common


