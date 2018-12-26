function result=img_create(correct)
[r,v]=max(correct');%利用v找索引
cd('C:\Users\93174\Desktop\项目\挑战杯\图像分割\五线谱最终成果\music_sim\number');%模板统一
c3=imread('c3.png');c3=rgb2gray(c3);c3=imresize(c3,[40,30],'bicubic');c3=c3>100;
d3=imread('d3.png');d3=rgb2gray(d3);d3=imresize(d3,[40,30],'bicubic');d3=d3>100;
e3=imread('e3.png');e3=rgb2gray(e3);e3=imresize(e3,[40,30],'bicubic');e3=e3>100;
f3=imread('f3.png');f3=rgb2gray(f3);f3=imresize(f3,[40,30],'bicubic');f3=f3>100;
g3=imread('g3.png');g3=rgb2gray(g3);g3=imresize(g3,[40,30],'bicubic');g3=g3>100;
a3=imread('a3.png');a3=rgb2gray(a3);a3=imresize(a3,[40,30],'bicubic');a3=a3>100;
b3=imread('b3.png');b3=rgb2gray(b3);b3=imresize(b3,[40,30],'bicubic');b3=b3>100;
c4=imread('c4.png');c4=rgb2gray(c4);c4=imresize(c4,[40,30],'bicubic');c4=c4>100;
stop=imread('0.png');stop=rgb2gray(stop);stop=imresize(stop,[40,30],'bicubic');stop=stop>100;
line=imread('line.png');line=rgb2gray(line);line=imresize(line,[40,30],'bicubic');line=line>100;
calp24=imread('calp24.png');calp24=rgb2gray(calp24);calp24=imresize(calp24,[40,30],'bicubic');calp24=calp24>100;
henggang=imread('henggang.png');henggang=rgb2gray(henggang);henggang=imresize(henggang,[40,30],'bicubic');henggang=henggang>100;
img=255+zeros(700,400);
num=1;

%模仿打印机对整页进行打印
j=90;i=90;%左上角的坐标点确定  本行为拍号行
%确定拍号（2/4拍为第2号模板）
num=find(v==2);
img(j:j+39,i:i+29)=calp24;
v(num)=[];
v(v==1)=[];%识别为高音谱号先置零
%正式开始打印
j=180;i=75;%第一行定位
num=1;
    while num<=length(v)
        switch v(num)
            case 3
                img(j:j+39,i:i+29)=c3;
            case 4
                img(j:j+39,i:i+29)=d3;
            case 5
                img(j:j+39,i:i+29)=e3;
            case 6
                img(j:j+39,i:i+29)=f3;
            case 7
                img(j:j+39,i:i+29)=g3;
            case 8
                img(j:j+39,i:i+29)=a3;
            case 9
                img(j:j+39,i:i+29)=b3;
            case 10
                img(j:j+39,i:i+29)=c4;
            case 11
                img(j:j+39,i:i+29)=line;
            case 12
                img(j:j+39,i:i+29)=c3;
                i=i+20;
                img(j:j+39,i:i+29)=henggang;
            case 13
                img(j:j+39,i:i+29)=d3;
                i=i+20;
                img(j:j+39,i:i+29)=henggang;
            case 14
                img(j:j+39,i:i+29)=e3;
                i=i+20;
                img(j:j+39,i:i+29)=henggang;
            case 15
                img(j:j+39,i:i+29)=f3;
                i=i+20;
                img(j:j+39,i:i+29)=henggang;
            case 16
                img(j:j+39,i:i+29)=g3;
                i=i+20;
                img(j:j+39,i:i+29)=henggang;
            case 17
                img(j:j+39,i:i+29)=a3;
                i=i+20;
                img(j:j+39,i:i+29)=henggang;
            case 18
                img(j:j+39,i:i+29)=b3;
                img(j:j+39,i:i+29)=henggang;
            case 19
                img(j:j+39,i:i+29)=c4;
                i=i+20;
                img(j:j+39,i:i+29)=henggang;
            case 20
                img(j:j+39,i:i+29)=stop;
            case 21
                img(j:j+39,i:i+29)=stop;
                i=i+20;
                img(j:j+39,i:i+29)=stop;
                
        end
        num=num+1;
        i=i+20;
        if rem(num,11)==0
            j=j+50;
            i=75;
        end
    end

result=img;

end