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
	    ./matching $name ${template} $rotate 3.0 pwg
	else
	    ./matching $name ${template} $rotate 1.1 pwg
	fi
fi
if [ $5 = 2 ]
then
	template=$base"/"kids_chuunibyou_girl.ppm
	#echo `basename ${template}`
	if [ $4 = 0.5 ]
	then
	    ./matching $name ${template} $rotate 3.0 pwg
	else
	    ./matching $name ${template} $rotate 1.03 pwg
	fi
fi
if [ $5 = 3 ]
then
	template=$base"/"mokuzai_hakobu.ppm
	#echo `basename ${template}`
	if [ $4 = 0.5 ]
	then
	    ./matching $name ${template} $rotate 3.0 pwg
	else
	    ./matching $name ${template} $rotate 1.1 pwg
	fi
fi
if [ $5 = 4 ]
then
	template=$base"/"ocean_beach_kinzokutanchi.ppm
	#echo `basename ${template}`
	if [ $4 = 0.5 ]
	then
	    ./matching $name ${template} $rotate 3.0 pwg
	else
	    ./matching $name ${template} $rotate 1.1 pwg
	fi
fi
