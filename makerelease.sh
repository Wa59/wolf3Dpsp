rm -R Wolf_3D
rm -R release

mkdir Wolf_3D
mkdir release

cp -r Launcher/* Wolf_3D

make clean && make VERSION=0 && mv EBOOT.PBP Wolf_3D/Files/Wolf_3D\(S\)/EBOOT.PBP
make clean && make VERSION=1 && mv EBOOT.PBP Wolf_3D/Files/Wolf_3D\(F\)/EBOOT.PBP
make clean && make VERSION=2 && mv EBOOT.PBP Wolf_3D/Files/Spear_Of_Destiny\(S\)/EBOOT.PBP

make clean && make VERSION=3
cp EBOOT.PBP Wolf_3D/Files/Spear_Of_Destiny_Episode_3_Return_To_Danger/EBOOT.PBP
cp EBOOT.PBP Wolf_3D/Files/Spear_Of_Destiny_Episode_2_The_Ultimate_Challenge/EBOOT.PBP
mv EBOOT.PBP Wolf_3D/Files/Spear_Of_Destiny\(F\)/EBOOT.PBP

#./test.sh

zip -r release.zip Wolf_3D 
mv release.zip release/release.zip