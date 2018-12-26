
function img=img_init(f)
%×ª»Ò¶È£¬ºÚÍ¼£¬ÇĞ±ßº¯Êı
[m,n,v]=size(f);
if v~=1
    f=rgb2gray(f);
end
value=sum(sum(f))/(m*n);
if value>=200
    f=255-f;
end
if n<1000
    f=imresize(f,3);
end

img=f;
%ÇĞ±ß
img1=bwareaopen(img,fix(20000/(3000/m)));%È¥µôÔëµã
se=ones(round(m/10));
img1=imclose(img1,se);%½«ÎåÏßÆ×ÇøÓòÍ¿°×
x=sum(img1,2);
img_area=find(x~=0);

x_cut=sum(img)/n;
x_cut=ceil(x_cut);x_cut=logical(x_cut);
left=0;right=0;
for i=1:(n-1)
    if(x_cut(i)==0&&x_cut(i+1)~=0)
        left=i;
    end
    if(x_cut(i)~=0&&x_cut(i+1)==0)
        right=i;
    end
end
img=img(img_area(1):img_area(length(img_area)),left:right);
[m,n]=size(img);
img_square=zeros(m+20,n+20);
img_square(9:m+8,9:n+8)=img;
img=img_square;
end
