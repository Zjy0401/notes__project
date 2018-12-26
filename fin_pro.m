 tic
clc,clear,close all
[filename,pathname]=uigetfile({'*.jpg';'*.bmp';'*.tif';'*.png';'*.*'},'选择图像');%读入图片
f=[pathname,filename];
f=imread(f);

img=img_init(f);%输入图片转化为切好的黑图
img_cut(img);%输出的是一共有多少张图片的个数，内部已经把音符切割好并保存为jpg格式的文件
numb=read_num('C:\Users\93174\Desktop\项目\挑战杯\图像分割\五线谱最终成果\note_cut\');

correct=img_ident(numb);
result=img_create(correct);%生成简谱
figure,imshow(result)

toc