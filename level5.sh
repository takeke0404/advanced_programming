#!/bin/sh
name=$1
x=0
if [ $2 = 1 ]
then
   template="tmpproc/0.5/"airgun_women_syufu.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.5 pg
   #echo ""
fi
if [ $2 = 2 ]
then
   template="tmpproc/0.5/"kids_chuunibyou_girl.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.5 pg
   #echo ""
fi
if [ $2 = 3 ]
then
   template="tmpproc/0.5/"mokuzai_hakobu.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.5 pg
   #echo ""
fi
if [ $2 = 4 ]
then
   template="tmpproc/0.5/"ocean_beach_kinzokutanchi.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.5 pg
   #echo ""
fi
if [ $2 = 5 ]
then
   template="tmpproc/1.0/"airgun_women_syufu.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.3 pg
   #echo ""
fi
if [ $2 = 6 ]
then
   template="tmpproc/1.0/"kids_chuunibyou_girl.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.3 pg
   #echo ""
fi
if [ $2 = 7 ]
then
   template="tmpproc/1.0/"mokuzai_hakobu.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.3 pg
   #echo ""
fi
if [ $2 = 8 ]
then
   template="tmpproc/1.0/"ocean_beach_kinzokutanchi.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.3 pg
   #echo ""
fi
if [ $2 = 9 ]
then
   template="tmpproc/2.0/"airgun_women_syufu.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.3 pg
   #echo ""
fi
if [ $2 = 10 ]
then
   template="tmpproc/2.0/"kids_chuunibyou_girl.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.3 pg
   #echo ""
fi
if [ $2 = 11 ]
then
   template="tmpproc/2.0/"mokuzai_hakobu.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.3 pg
   #echo ""
fi
if [ $2 = 12 ]
then
   template="tmpproc/2.0/"ocean_beach_kinzokutanchi.ppm
   #echo `basename ${template}`
   ./matching $name "${template}" rotation 0.3 pg
   #echo ""
fi
