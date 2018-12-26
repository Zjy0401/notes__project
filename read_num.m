function numb=read_num(file_path)

img_path_list=dir(strcat(file_path,'*.jpg'));
img_num=length(img_path_list);
numb=img_num;
end