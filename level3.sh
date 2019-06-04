#!/bin/sh
name=$1
x=0
if [ $2 = 1 ]
then
   template="level3/"airgun_women_syufu.ppm
   echo `basename ${template}`
   if [ $x = 0 ]
       then
<<<<<<< HEAD
	   ./matching $name "${template}" rotation 0.9 wpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.9 wpg
=======
	   ./matching $name "${template}" rotation 0.8 pg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.8 pg
>>>>>>> 57e9620170c174dbd056078b9193b1304abd5063
       fi
   echo ""
fi
if [ $2 = 2 ]
then
   template="level3/"kids_chuunibyou_girl.ppm
   echo `basename ${template}`
   if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.8 pg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.8 pg
       fi
   echo ""
fi
if [ $2 = 3 ]
then
   template="level3/"mokuzai_hakobu.ppm
   echo `basename ${template}`
   if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.8 pg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.8 pg
       fi
   echo ""
fi
if [ $2 = 4 ]
then
   template="level3/"ocean_beach_kinzokutanchi.ppm
   echo `basename ${template}`
   if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.8 pg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.8 pg
       fi
   echo ""
fi
