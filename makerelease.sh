WOLF3D_SHAREWARE="Wolf3D_Shareware" 
WOLF3D_FULL="Wolf3D_Full"
WOLF3D_SOD_SHAREWARE="Wolf3D_SOD_Shareware"
WOLF3D_SOD_FULL="Wolf3D_SOD_Full"

rm -R bin

mkdir bin
#mkdir bin/$WOLF3D_SHAREWARE
mkdir bin/$WOLF3D_FULL
#mkdir bin/$WOLF3D_SOD_SHAREWARE
#mkdir bin/$WOLF3D_SOD_FULL

#cp Wolf3D_Shareware/* bin/$WOLF3D_SHAREWARE && make clean && make VERSION=0 && mv EBOOT.PBP bin/$WOLF3D_SHAREWARE && 
cp Wolf3D_Full/* bin/$WOLF3D_FULL && make clean && make VERSION=1 && mv EBOOT.PBP bin/$WOLF3D_FULL
#cp Wolf3D_SOD_Shareware/* bin/$WOLF3D_SOD_SHAREWARE && make clean && make VERSION=2 && mv EBOOT.PBP bin/$WOLF3D_SOD_SHAREWARE
#cp Wolf3D_Full/* bin/$WOLF3D_SOD_FULL && make clean && make VERSION=3 && mv EBOOT.PBP bin/$WOLF3D_SOD_FULL
