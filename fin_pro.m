 tic
clc,clear,close all
[filename,pathname]=uigetfile({'*.jpg';'*.bmp';'*.tif';'*.png';'*.*'},'ѡ��ͼ��');%����ͼƬ
f=[pathname,filename];
f=imread(f);

img=img_init(f);%����ͼƬת��Ϊ�кõĺ�ͼ
img_cut(img);%�������һ���ж�����ͼƬ�ĸ������ڲ��Ѿ��������и�ò�����Ϊjpg��ʽ���ļ�
numb=read_num('C:\Users\93174\Desktop\��Ŀ\��ս��\ͼ��ָ�\���������ճɹ�\note_cut\');

correct=img_ident(numb);
result=img_create(correct);%���ɼ���
figure,imshow(result)

toc