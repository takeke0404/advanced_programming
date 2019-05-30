#!/bin/sh
# imagemagickで何か画像処理をして，/imgprocにかきこみ，テンプレートマッチング
image=$1/test/$1_00$2.ppm
bname=`basename ${image}`
name="imgproc/"$bname
x=0

if [ $1 = level1 ]
then
   convert "${image}" $name
   rotation=0
   echo $bname:
   for template in $1/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 cwpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   done
   echo ""
fi
if [ $1 = level2 ]
then
   convert -selective-blur 2x2+50% "${image}" "${name}"
   rotation=0
   echo $bname:
   for template in $1/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.8 cwpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.8 wpg
       fi
   done
   echo ""
fi
if [ $1 = level3 ]
then
   convert "${image}" $name
   rotation=0
   echo $bname:
   for template in $1/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.8 cwpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.8 wpg
       fi
   done
   echo ""
fi
if [ $1 = level4 ]
then
   convert "${image}" $name
   rotation=0
   echo $bname:
   for template in $1/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 cwpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   done
   echo ""
fi
if [ $1 = level5 ]
rm -rf result/level5*.txt
then
   rotation=0
   echo $bname:
   for template in tmpproc/0.5/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.5 wpg
       else
	   ./matching $name "${template}" rotation 0.5 pg
       fi
   done
   for template in tmpproc/1.0/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 wpg
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   done
   for template in tmpproc/2.0/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 wpg
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   done
   echo ""
fi
	 
