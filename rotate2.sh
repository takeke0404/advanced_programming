#!/bin/sh
if [ $3 = 1 ]
then
   template="level6/airgun_women_syufu.ppm"
   convert -rotate $2 "${template}" $1/airgun_women_syufu.ppm
fi
if [ $3 = 2 ]
then
   template="level6/kids_chuunibyou_girl.ppm"
   convert -rotate $2 "${template}" $1/kids_chuunibyou_girl.ppm
fi
if [ $3 = 3 ]
then
   template="level6/mokuzai_hakobu.ppm"
   convert -rotate $2 "${template}" $1/mokuzai_hakobu.ppm
fi
if [ $3 = 4 ]
then
   template="level6/ocean_beach_kinzokutanchi.ppm"
   convert -rotate $2 "${template}" $1/ocean_beach_kinzokutanchi.ppm
fi
