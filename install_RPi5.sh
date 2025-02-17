#!/bin/bash
git clone https://github.com/TimothyEBaldwin/RISC_OS_Linux_Binary.git

cd RISC_OS_Linux_Binary
patch -p1 < ../M1.patch
make -j8 opengl

RISCOSIMG=./Unix/RISCOS.IMG

mkdir -p ./hostfs
cp ../HardDisc4.util ./hostfs/HardDisc4.util,ffc
RISC_OS_IXFS_HardDisc4='IXFS:$' RISC_OS_Alias_IXFSBoot="run HardDisc4/util" ./opengl bwrap --bind ./hostfs / --ro-bind /usr /usr --ro-bind /lib /lib --ro-bind $RISCOSIMG /RISCOS.IMG --proc /proc --chdir / ./RISCOS.IMG --abort-on-input

echo >> hostfs/HardDisc4/\!Boot/RO520Hook/Boot/Desktop
echo "AddTinyDir HardDisc4" >> hostfs/HardDisc4/\!Boot/RO520Hook/Boot/Desktop

# boot RISC OS
RISC_OS_IXFS_HardDisc4='IXFS:$.HardDisc4' RISC_OS_Alias_IXFSBoot='HardDisc4.!Boot' ./opengl bwrap --bind ./hostfs / --ro-bind /usr /usr --ro-bind /lib /lib --ro-bind $RISCOSIMG /RISCOS.IMG --proc /proc --chdir / ./RISCOS.IMG >/dev/null
