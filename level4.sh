#!/bin/sh
name=$1
x=0
if [ $2 = 1 ]
then
   template="level4/"airgun_women_syufu.ppm
   echo `basename ${template}`
   if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 wpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   echo ""
fi
if [ $2 = 2 ]
then
   template="level4/"kids_chuunibyou_girl.ppm
   echo `basename ${template}`
   if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 wpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   echo ""
fi
if [ $2 = 3 ]
then
   template="level4/"mokuzai_hakobu.ppm
   echo `basename ${template}`
   if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 wpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   echo ""
fi
if [ $2 = 4 ]
then
   template="level4/"ocean_beach_kinzokutanchi.ppm
   echo `basename ${template}`
   if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 wpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   echo ""
fi
