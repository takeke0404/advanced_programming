#!/bin/sh
if [ $3 = 1 ]
then
   template="level5/airgun_women_syufu.ppm"
   convert -resize $2% "${template}" $1/airgun_women_syufu.ppm
fi
if [ $3 = 2 ]
then
   template="level5/kids_chuunibyou_girl.ppm"
   convert -resize $2% "${template}" $1/kids_chuunibyou_girl.ppm
fi
if [ $3 = 3 ]
then
   template="level5/mokuzai_hakobu.ppm"
   convert -resize $2% "${template}" $1/mokuzai_hakobu.ppm
fi
if [ $3 = 4 ]
then
   template="level5/ocean_beach_kinzokutanchi.ppm"
   convert -resize $2% "${template}" $1/ocean_beach_kinzokutanchi.ppm
fi
   
