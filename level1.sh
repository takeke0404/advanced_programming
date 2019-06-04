#!/bin/sh
name=$1
x=0
if [ $2 = 1 ]
then
   template="level1/"airgun_women_syufu.ppm
   echo `basename ${template}`
   ./matching $name "${template}" rotation 0.1 pg
   echo ""
fi
if [ $2 = 2 ]
then
   template="level1/"kids_chuunibyou_girl.ppm
   echo `basename ${template}`
   ./matching $name "${template}" rotation 0.1 pg
   echo ""
fi
if [ $2 = 3 ]
then
   template="level1/"mokuzai_hakobu.ppm
   echo `basename ${template}`
   ./matching $name "${template}" rotation 0.1 pg
   echo ""
fi
if [ $2 = 4 ]
then
   template="level1/"ocean_beach_kinzokutanchi.ppm
   echo `basename ${template}`
   ./matching $name "${template}" rotation 0.1 pg
   echo ""
fi
