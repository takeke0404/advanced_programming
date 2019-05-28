#!/bin/sh
# imagemagickで何か画像処理をして，/imgprocにかきこみ，テンプレートマッチング
image=$1/test/$1_00$2.ppm
bname=`basename ${image}`
name="imgproc/"$bname
x=0

if [ $1 = level1 ]
then
   rotation=0
   echo $bname:
   for template in $1/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.5 cwpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.5 wpg
       fi
   done
   echo ""
fi
if [ $1 = level2 ]
then
   convet -selective-blur 10*30+30% "${image}" "${name}"
   #convert -median 3 "${image}" "${name}"
   rotation=0
   echo $bname:
   for template in $1/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.7 cwpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.7 wpg
       fi
   done
   echo ""
fi
if [ $1 = level3 ]
then
   #convert -blur 2x6 "${image}" "${name}"
   convert -median 3 "${image}" "${name}"
   rotation=0
   echo $bname:
   for template in $1/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.7 cwpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.7 wpg
       fi
   done
   echo ""
fi


	 
