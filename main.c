#include "imageUtil.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

void templateMatchingGray(Image* src, Image* template, Point* position, double* distance,int bit)
{
	if (src->channel != 1 || template->channel != 1)
	{
		fprintf(stderr, "src and/or templeta image is not a gray image.\n");
		return;
	}

	int min_distance = INT_MAX;
	int ret_x = 0;
	int ret_y = 0;
	int x, y, i, j;
	for (y = bit; y < (src->height - template->height); y+=bit)
	{
		for (x = bit; x < src->width - template->width; x+=bit)
		{
			int distance = 0;
			//SSD
			for (j = 0; j < template->height; j++)
			{
				for (i = 0; i < template->width; i++)
				{
					int v = (src->data[(y + j)*src->width + (x + i)] - template->data[j*template->width + i]);
					distance += v*v;
				}
			}
			if (distance < min_distance)
			{
				min_distance = distance;
				ret_x = x;
				ret_y = y;
			}
		}
	}
	for (y = ret_y -bit; y < ret_y +bit; y++)
	{
		for (x = ret_x - bit; x < ret_x + bit; x++)
		{
			int distance = 0;
			//SSD
			for (j = 0; j < template->height; j++)
			{
				for (i = 0; i < template->width; i++)
				{
					int v = (src->data[(y + j)*src->width + (x + i)] - template->data[j*template->width + i]);
					distance += v*v;
				}
			}
			if (distance < min_distance)
			{
				min_distance = distance;
				ret_x = x;
				ret_y = y;
			}
		}
	}
	

	position->x = ret_x;
	position->y = ret_y;
	*distance = sqrt(min_distance) / (template->width*template->height);
}
//level4用
void templateMatchingGray1(Image* src, Image* template, Point* position, double* distance,int bit)
{
	if (src->channel != 1 || template->channel != 1)
	{
		fprintf(stderr, "src and/or templeta image is not a gray image.\n");
		return;
	}

	int min_distance = INT_MAX;
	int ret_x = 0;
	int ret_y = 0;
	int x, y, i, j;
	for (y = bit; y < (src->height - template->height); y+=bit)
	{
		for (x = bit; x < src->width - template->width; x+=bit)
		{
			int distance1 = 0;
			//SSD
			for (j = 0; j < template->height; j++)
			{
				for (i = 0; i < template->width; i++)
				{
				  if(template->data[j*template->width+i]==0){continue;}
				  int v = (src->data[(y + j)*src->width + (x + i)] - template->data[j*template->width + i]);
				  distance1 += v*v; 
				}	
			}
			
			if(distance1 == 0){
			  position->x = x;
			  position->y = y;
			  *distance = 0;
			  return;
			}
		       
			if (distance1 < min_distance)
			{
				min_distance = distance1;
				ret_x = x;
				ret_y = y;
			}
		}
	}
	for (y = ret_y-bit; y < ret_y+bit; y++)
	{
		for (x = ret_x+bit; x < ret_x+bit; x++)
		{
			int distance1 = 0;
			//SSD
			for (j = 0; j < template->height; j++)
			{
				for (i = 0; i < template->width; i++)
				{
				  if(template->data[j*template->width+i]==0){continue;}
				  int v = (src->data[(y + j)*src->width + (x + i)] - template->data[j*template->width + i]);
				  distance1 += v*v; 
				}	
			}
			
			if(distance1 == 0){
			  position->x = x;
			  position->y = y;
			  *distance = 0;
			  return;
			}
		       
			if (distance1 < min_distance)
			{
				min_distance = distance1;
				ret_x = x;
				ret_y = y;
			}
		}
	}

	position->x = ret_x;
	position->y = ret_y;
	*distance = sqrt(min_distance) / (template->width*template->height);
}

void templateMatchingColor(Image* src, Image* template, Point* position, double* distance)
{
	if (src->channel != 3 || template->channel != 3)
	{
		fprintf(stderr, "src and/or templeta image is not a color image.\n");
		return;
	}

	int min_distance = INT_MAX;
	int ret_x = 0;
	int ret_y = 0;
	int x, y, i, j;
	for (y = 0; y < (src->height - template->height); y++)
	{
		for (x = 0; x < src->width - template->width; x++)
		{
			int distance = 0;
			//SSD
			for (j = 0; j < template->height; j++)
			{
				for (i = 0; i < template->width; i++)
				{
					int pt = 3 * ((y + j)*src->width + (x + i));
					int pt2 = 3 * (j*template->width + i);
					int r = (src->data[pt + 0] - template->data[pt2 + 0]);
					int g = (src->data[pt + 1] - template->data[pt2 + 1]);
					int b = (src->data[pt + 2] - template->data[pt2 + 2]);

					distance += (r*r + g*g + b*b);
				}
			}
			if (distance < min_distance)
			{
				min_distance = distance;
				ret_x = x;
				ret_y = y;
			}
		}
	}

	position->x = ret_x;
	position->y = ret_y;
	*distance = sqrt(min_distance) / (template->width*template->height);
}

// test/beach3.ppm template /airgun_women_syufu.ppm 0 0.5 cwp
int main(int argc, char** argv)
{
	if (argc < 5)
	{
		fprintf(stderr, "Usage: templateMatching src_image temlate_image rotation threshold option(c,w,p,g)\n");
		fprintf(stderr, "Option:\nc) clear a txt result. \nw) write result a image with rectangle.\np) print results.\n");
		fprintf(stderr, "ex: templateMatching src_image.ppm temlate_image.ppm 0 1.0  \n");
		fprintf(stderr, "ex: templateMatching src_image.ppm temlate_image.ppm 0 1.0 c\n");
		fprintf(stderr, "ex: templateMatching src_image.ppm temlate_image.ppm 0 1.0 w\n");
		fprintf(stderr, "ex: templateMatching src_image.ppm temlate_image.ppm 0 1.0 p\n");
		fprintf(stderr, "ex: templateMatching src_image.ppm temlate_image.ppm 0 1.0 g\n");
		fprintf(stderr, "ex: templateMatching src_image.ppm temlate_image.ppm 0 1.0 cw\n");
		fprintf(stderr, "ex: templateMatching src_image.ppm temlate_image.ppm 0 1.0 cwp\n");
		fprintf(stderr, "ex: templateMatching src_image.ppm temlate_image.ppm 0 1.0 cwpg\n");
		return -1;
	}

	char* input_file = argv[1];
	char* template_file = argv[2];
	int rotation = atoi(argv[3]);
	double threshold = atof(argv[4]);
	//level変数追加
	int level = input_file[13]-'0';
	
	char output_name_base[256];
	char output_name_txt[256];
	char output_name_img[256];
	strcpy(output_name_base, "result/");
	strcat(output_name_base, getBaseName(input_file));
	strcpy(output_name_txt, output_name_base);
	strcat(output_name_txt, ".txt");
	strcpy(output_name_img, output_name_base);

	int isWriteImageResult = 0;
	int isPrintResult = 0;
	int isGray = 0;
	
	if (argc == 6)
	{
		char *p = NULL;
		if (p = strchr(argv[5], 'c') != NULL) clearResult(output_name_txt);
		if (p = strchr(argv[5], 'w') != NULL) isWriteImageResult = 1;
		if (p = strchr(argv[5], 'p') != NULL) isPrintResult = 1;
		if (p = strchr(argv[5], 'g') != NULL) isGray = 1;
	}

	Image* img = readPXM(input_file);
	Image* template = readPXM(template_file);

	Point result;
	double distance = 0.0;

	if (isGray &&img->channel == 3)
	{
		Image* img_gray = createImage(img->width, img->height, 1);
		Image* template_gray = createImage(template->width, template->height, 1);
		cvtColorGray(img, img_gray);
		cvtColorGray(template, template_gray);

		//level別で処理を場合分け
		int bit;
		if(level==4){
		  bit = 3;
		  templateMatchingGray1(img_gray, template_gray, &result, &distance,bit);
		}else if(level==3){
		  bit = 1;
		  templateMatchingGray(img_gray, template_gray, &result, &distance,bit);
		}else{
		  bit = 3;
		  templateMatchingGray(img_gray, template_gray, &result, &distance,bit);
		}

		freeImage(img_gray);
		freeImage(template_gray);
	}
	else
	{
		templateMatchingColor(img, template, &result, &distance);
	}

	if (distance < threshold)
	{
		writeResult(output_name_txt, getBaseName(template_file), result, template->width, template->height, rotation, distance);
		if (isPrintResult)
		{
			printf("[Found    ] %s %d %d %d %d %d %f\n", getBaseName(template_file), result.x, result.y, template->width, template->height, rotation, distance);
		}
			if (isWriteImageResult)
	{
		drawRectangle(img, result, template->width, template->height);

		if (img->channel == 3) strcat(output_name_img, ".ppm");
		else if (img->channel == 1)strcat(output_name_img, ".pgm");
		printf("out: %s", output_name_img);
		writePXM(output_name_img, img);
	}
	}
	else
	{
		if (isPrintResult)
		{
			printf("[Not found] %s %d %d %d %d %d %f\n", getBaseName(template_file), result.x, result.y, template->width, template->height, rotation, distance);
		}
	}


	freeImage(img);
	freeImage(template);

	return 0;
}
