#!/bin/sh
name=$1
x=0
if [ $2 = 1 ]
then
   template="level3/"airgun_women_syufu.ppm
   echo `basename ${template}`
   ./matching $name "${template}" rotation 0.8 pg
   echo ""
fi
if [ $2 = 2 ]
then
   template="level3/"kids_chuunibyou_girl.ppm
   echo `basename ${template}`
   ./matching $name "${template}" rotation 0.8 pg
   echo ""
fi
if [ $2 = 3 ]
then
   template="level3/"mokuzai_hakobu.ppm
   echo `basename ${template}`
   ./matching $name "${template}" rotation 0.8 pg
   echo ""
fi
if [ $2 = 4 ]
then
   template="level3/"ocean_beach_kinzokutanchi.ppm
   echo `basename ${template}`
   ./matching $name "${template}" rotation 0.8 pg
   echo ""
fi
