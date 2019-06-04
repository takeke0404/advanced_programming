#!/bin/sh
name=$1
x=0
if [ $2 = 1 ]
then
   for template in tmpproc/inf/rotate0/1.0/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 0 0.2 p
   done
   echo ""
   for template in tmpproc/inf/rotate0/0.5/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 0 0.2 p
   done
   echo ""
   for template in tmpproc/inf/rotate0/2.0/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 0 0.2 p
   done
   echo ""
fi
if [ $2 = 2 ]
then
   for template in tmpproc/inf/rotate90/1.0/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 90 0.2 p
   done
   echo ""
   for template in tmpproc/inf/rotate90/0.5/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 90 0.2 p
   done
   echo ""
   for template in tmpproc/inf/rotate90/2.0/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 90 0.2 p
   done
   echo ""
fi
if [ $2 = 3 ]
then
   for template in tmpproc/inf/rotate180/1.0/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 180 0.2 p
   done
   echo ""
   for template in tmpproc/inf/rotate180/0.5/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 180 0.2 p
   done
   echo ""
   for template in tmpproc/inf/rotate180/2.0/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 180 0.2 p
   done
   echo ""
fi
if [ $2 = 4 ]
then
   for template in tmpproc/inf/rotate270/1.0/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 270 0.2 p
   done
   echo ""
   for template in tmpproc/inf/rotate270/0.5/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 270 0.2 p
   done
   echo ""
   for template in tmpproc/inf/rotate270/2.0/*.ppm; do
	echo `basename ${template}`
       ./matching $name "${template}" 270 0.2 p
   done
   echo ""
fi
