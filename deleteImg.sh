#!/bin/sh
rm -rf imgproc/*.ppm
rm -rf imgproc/inf/*.ppm
for i in `seq 1 6`;do
    rm -rf imgproc/level7/level$i/*.ppm
done
for i in 0.5 1.0 2.0;do
    rm -rf tmpproc/$i/*ppm
done
for i in 0 90 180 270;do
    rm -rf tmpproc/rotate$i/*ppm
done
for i in 0 90 180 270;do
    for j in 0.5 1.0 2.0;do
	rm -rf tmpproc/inf/rotate$i/$j/*ppm
    done
    rm -rf tmpproc/inf/rotate$i/*ppm
done
