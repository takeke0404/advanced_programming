#!/bin/sh
name=$1
base=$2
rotate=$3
if [ $4 = 1 ]
then
	template=$base"/"airgun_women_syufu.ppm
	echo `basename ${template}`
	./matching $name ${template} ${rotate} 0.09 pw
fi
if [ $4 = 2 ]
then
	template=$base"/"kids_chuunibyou_girl.ppm
	echo `basename ${template}`
	./matching $name ${template} ${rotate} 0.09 pw
fi
if [ $4 = 3 ]
then
	template=$base"/"mokuzai_hakobu.ppm
	echo `basename ${template}`
	./matching $name ${template} ${rotate} 0.07 pw
fi
if [ $4 = 4 ]
then
	template=$base"/"ocean_beach_kinzokutanchi.ppm
	echo `basename ${template}`
	./matching $name ${template} ${rotate} 0.06 pw
fi
