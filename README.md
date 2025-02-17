# RISCOSonM1
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

The file ``HardDisc4.util`` is an older version of the HardDisk4.util from https://www.riscosopen.org/content/downloads/common


