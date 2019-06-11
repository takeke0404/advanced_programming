#!/bin/sh
# tolerance error
POSITON_TOLERANCE_ERROR=0
WIDHT_TOLERANCE_ERROR=0
HIGHT_TOLERANCE_ERROR=0
ROTATION_TOLERANCE_ERROR=0

correct=0
sum=0
not_exist=0

debug=0
if [ $# -ge 3 ]; then
	if [ $3 = "d" ]; then
		debug=1
	fi
fi

for result in $1/*.txt; do
	answer=$2/test/`basename ${result}`
	if [ -e ${answer} ]; then
		sum=`echo ${sum}+1 | bc`

		result_template_name=`cat ${result} | awk '{print $1}'`
		result_x=`cat ${result} | awk '{print $2}'`
		result_y=`cat ${result} | awk '{print $3}'`
		result_width=`cat ${result} | awk '{print $4}'`
		result_hight=`cat ${result} | awk '{print $5}'`
		result_rotation=`cat ${result} | awk '{print $6}'`
		
		answer_template_name=`cat ${answer} | awk '{print $1}'`
		answer_x=`cat ${answer} | awk '{print $2}'`
		answer_y=`cat ${answer} | awk '{print $3}'`
		answer_width=`cat ${answer} | awk '{print $4}'`
		answer_hight=`cat ${answer} | awk '{print $5}'`
		answer_rotation=`cat ${answer} | awk '{print $6}'`

		if [ ${result_template_name} = ${answer_template_name} ]; then
			x=`expr ${result_x} - ${answer_x}`
			y=`expr ${result_y} - ${answer_y}`
			width=`expr ${result_width} - ${answer_width}`
			hight=`expr ${result_hight} - ${answer_hight}`
			rotation=`expr ${result_rotation} - ${answer_rotation}`

			x=`echo "sqrt(${x}^2)" | bc`
			y=`echo "sqrt(${y}^2)" | bc`
			width=`echo "sqrt(${width}^2)" | bc`
			hight=`echo "sqrt(${hight}^2)" | bc`
			rotation=`echo "sqrt(${rotation}^2)" | bc`


			if test ${x} -le ${POSITON_TOLERANCE_ERROR} && \
			   test ${y} -le ${POSITON_TOLERANCE_ERROR} && \
			   test ${width} -le ${WIDHT_TOLERANCE_ERROR} && \
			   test ${hight} -le ${HIGHT_TOLERANCE_ERROR} && \
			   test ${rotation} -le ${ROTATION_TOLERANCE_ERROR}; then


				correct=`echo ${correct}+1 | bc`
			fi
		fi
	else

		not_exist=`echo ${not_exist}+1 | bc`
	fi
done

echo "level"$2
echo "=========================="
echo "SUMMARY"
echo "CORRECT RATE: "${correct}"/"${sum}
echo "ANSWER FILE NOT EXIST: "${not_exist}
echo "=========================="
