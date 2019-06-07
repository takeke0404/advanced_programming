#!/bin/sh
name=$1
base=$2
rotate=$3
if [ $5 = 1 ]
then
	template=$base"/"airgun_women_syufu.ppm
	#echo `basename ${template}`
	if [ $4 = 0.5 ]
	then
	    ./matching $name ${template} $rotate 0.18 pw
	else
	    ./matching $name ${template} $rotate 0.09 pw
	fi
fi
if [ $5 = 2 ]
then
	template=$base"/"kids_chuunibyou_girl.ppm
	#echo `basename ${template}`
	if [ $4 = 0.5 ]
	then
	    ./matching $name ${template} $rotate 0.15 pw
	else
	    ./matching $name ${template} $rotate 0.09 pw
	fi
fi
if [ $5 = 3 ]
then
	template=$base"/"mokuzai_hakobu.ppm
	#echo `basename ${template}`
	if [ $4 = 0.5 ]
	then
	    ./matching $name ${template} $rotate 0.14 pw
	else
	    ./matching $name ${template} $rotate 0.07 pw
	fi
fi
if [ $5 = 4 ]
then
	template=$base"/"ocean_beach_kinzokutanchi.ppm
	#echo `basename ${template}`
	if [ $4 = 0.5 ]
	then
	    ./matching $name ${template} $rotate 0.15 pw
	else
	    ./matching $name ${template} $rotate 0.06 pw
	fi
fi
