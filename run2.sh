#!/bin/sh
# imagemagickで何か画像処理をして，/imgprocにかきこみ，テンプレートマッチング
image=$1/test/$1_00$2.ppm
bname=`basename ${image}`
name="imgproc/"$bname
x=0

if [ $1 = level1 ]
then
   convert "${image}" $name
   seq 1 4 | xargs -P4 -n1 sh level1.sh $name 
fi
if [ $1 = level2 ]
then
   convert -blur 2x2 "${image}" "${name}"
   seq 1 4 | xargs -P4 -n1 sh level2.sh $name 
fi
if [ $1 = level3 ]
then
   convert -colors 64 "${image}" "${name}"
   seq 1 4 | xargs -P4 -n1 sh level3.sh $name 
fi
if [ $1 = level4 ]
then
   convert "${image}" $name
   seq 1 4 | xargs -P4 -n1 sh level4.sh $name 
fi
if [ $1 = level5 ]
then
   rotation=0
   echo $bname:
   convert "${image}" "${name}"
   for template in tmpproc/0.5/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.5 cwpg
	   x=1
       else
	   ./matching $name "${template}" rotation 0.5 wpg
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
if [ $1 = level6 ]
then
   rotation=0
   echo $bname:
   convert "${image}" $name
   for template in tmpproc/rotate0/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" 0 0.5 cwpg
	   x=1
       else
	   ./matching $name "${template}" 0 0.5 wpg
       fi
   done
   rotation=90
   for template in tmpproc/rotate90/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" 90 0.5 wpg
	   x=1
       else
	   ./matching $name "${template}" 90 0.5 wpg
       fi
   done
   rotation=180
   for template in tmpproc/rotate180/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" 180 0.3 wpg
       else
	   ./matching $name "${template}" 180 0.3 wpg
       fi
   done
   rotation=270
   for template in tmpproc/rotate270/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" 270 0.3 wpg
       else
	   ./matching $name "${template}" 270 0.3 wpg
       fi
   done
   echo ""
fi

if [ $1 = level7 ]
then
    #level1
   name1="imgproc/level7/level1/"$bname
   convert "${image}" $name1
   seq 1 4 | xargs -P4 -n1 sh level1.sh $name1 
   #level2
   name2="imgproc/level7/level2/"$bname
   convert -blur 2x2 "${image}" "${name2}"
   seq 1 4 | xargs -P4 -n1 sh level2.sh $name2 
   #level3
   name3="imgproc/level7/level3/"$bname
   convert -colors 64 "${image}" "${name3}"
   seq 1 4 | xargs -P4 -n1 sh level3.sh $name3 
   #level4
   name4="imgproc/level7/level4/"$bname
   convert "${image}" $name4
   seq 1 4 | xargs -P4 -n1 sh level4.sh $name4 
   #level5
   name5="imgproc/level7/level5/"$bname
   rotation=0
   echo $bname:
   convert "${image}" "${name5}"
   for template in tmpproc/0.5/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name5 "${template}" rotation 0.5 wpg
	   x=1
       else
	   ./matching $name5 "${template}" rotation 0.5 wpg
       fi
   done
   for template in tmpproc/1.0/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name5 "${template}" rotation 0.3 wpg
       else
	   ./matching $name5 "${template}" rotation 0.3 wpg
       fi
   done
   for template in tmpproc/2.0/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name5 "${template}" rotation 0.3 wpg
       else
	   ./matching $name5 "${template}" rotation 0.3 wpg
       fi
   done
   echo ""
   #level6
   name6="imgproc/level7/level6/"$bname
   rotation=0
   echo $bname:
   convert "${image}" $name6
   for template in tmpproc/rotate0/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name6 "${template}" 0 0.5 wpg
	   x=1
       else
	   ./matching $name6 "${template}" 0 0.5 wpg
       fi
   done
   rotation=90
   for template in tmpproc/rotate90/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name6 "${template}" 90 0.5 wpg
	   x=1
       else
	   ./matching $name6 "${template}" 90 0.5 wpg
       fi
   done
   rotation=180
   for template in tmpproc/rotate180/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name6 "${template}" 180 0.3 wpg
       else
	   ./matching $name6 "${template}" 180 0.3 wpg
       fi
   done
   rotation=270
   for template in tmpproc/rotate270/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name6 "${template}" 270 0.3 wpg
       else
	   ./matching $name6 "${template}" 270 0.3 wpg
       fi
   done
   echo ""
   sed -i -e '2,6d' ./result/level7_00$2.txt
fi
