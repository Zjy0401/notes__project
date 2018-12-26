
function numb=img_cut(img)
[img1 t]=edge(img,'sobel','both');
sw=ones(10);
img1=imclose(img,sw);%图像平滑处理
img1=img1>100;
img1=bwareaopen(img1,20000);%移除小图像
[m,n]=size(img);

x=sum(img1')/n;
x=ceil(x);%取大于等于指定数的最小整数
x=logical(x);%将数值变成逻辑值，非零为一，是零则是逻辑零

%确定五线谱行数

p=0;
for i=1:m-1
    if(x(i)==0&&x(i+1)~=0)
        p=p+1;
    end
end
q=p;%p和q在这里表示五线谱的行数
cut1=zeros(1,p);
cut2=zeros(1,q);
%确定横向剪切的坐标
p=1;q=1;
for i=1:m-1
    if(x(i)==0&&x(i+1)~=0)
        cut1(p)=i;
        p=p+1;
    end
    if(x(i)~=0&&x(i+1)==0)
        cut2(q)=i;
        q=q+1;
    end
end
k=1;
notes=zeros(300,300);
for j=1:q-1
    clear l l_im shadow shadow_im cut_n cut_nn1 cut_nn2
    img_cutline=img(cut1(j):cut2(j),:);
    img_cutline=imresize(img_cutline,[150,2000],'bicubic');
    img_cutline=img_cutline>150;
    se=ones(4,1);
    sw=[0,0,0,0,1,1,0,0,0,0;0,0,0,1,1,1,1,1,0,0;0,0,1,1,1,1,1,1,1,0;0,0,1,1,1,1,1,1,1,1;0,1,1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1,1,0;1,1,1,1,1,1,1,1,0,0;0,1,1,1,1,1,1,0,0,0;0,0,1,1,0,0,0,0,0,0];
    img_cutline_1=imerode(img_cutline,se);
    img_cutline_1=imdilate(img_cutline_1,sw);
    
    %进行处理后更方便对音符进行切割
    shadow_im=sum(img_cutline_1)/n;
    shadow_im=shadow_im-mode(shadow_im);
    shadow_im=abs(shadow_im);
    
    
    
    %切割音符
    num=1;
    for i=1:length(img_cutline_1)
        if shadow_im(i)==0&&(i+1)<=length(img_cutline_1)&&sum(shadow_im(i:(i+1)))==0
            cut_n(num)=i;
            num=num+1;
        end
    end
    num=1;
    for i=1:length(cut_n)-1
        if  cut_n(i+1)-cut_n(i)>=5
            cut_nn1(num)=cut_n(i);
            cut_nn2(num)=cut_n(i+1);
            num=num+1;
            
        end
    end
    for i=1:num-2
        try
            if cut_nn1(i)==0&&cut_nn2(i)==0
                cut_nn1(i)=[];
                cut_nn2(i)=[];
            end
            num=length(cut_nn1);
        end
        
    end
    for i=1:length(cut_nn1)
        img_cutnote=img_cutline(:,cut_nn1(i):cut_nn2(i));
        imwrite(img_cutnote,strcat('C:\Users\93174\Desktop\项目\挑战杯\图像分割\五线谱最终成果\note_cut\',num2str(i+1000*j),'.jpg'));
        
    end

    
end