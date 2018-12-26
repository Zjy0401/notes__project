function img_ident=ident(numb)
load notes.mat    
img_ident=zeros(numb,21);
for j=1:numb
    img_path_list=dir(strcat('C:\Users\93174\Desktop\��Ŀ\��ս��\ͼ��ָ�\���������ճɹ�\note_cut\','*.jpg'));
    img_path_list=str2mat(img_path_list.name);
    img=imread(strcat('C:\Users\93174\Desktop\��Ŀ\��ս��\ͼ��ָ�\���������ճɹ�\note_cut\',img_path_list(j,:)));
    %ʶ��ģ��

    %ʶ���Ƿ�Ϊ�����׺� clef
    [m,n]=size(notes.clef);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.clef,[m_ss,n_ss],'bicubic');
    img_ident(j,1)=corr2(img,l_im3);
    %ʶ�� �ĺ� clap24
    [m,n]=size(notes.clap24);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.clap24,[m_ss,n_ss],'bicubic');
    img_ident(j,2)=corr2(img,l_im3);
    %ʶ�� �ķ�����
    %ʶ��c3
    [m,n]=size(notes.l4.c3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l4.c3,[m_ss,n_ss],'bicubic');
    img_ident(j,3)=corr2(img,l_im3);
    %ʶ��d3
    [m,n]=size(notes.l4.d3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l4.d3,[m_ss,n_ss],'bicubic');
    img_ident(j,4)=corr2(img,l_im3);
    %ʶ��e3
    [m,n]=size(notes.l4.e3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l4.e3,[m_ss,n_ss],'bicubic');
    img_ident(j,5)=corr2(img,l_im3);
    %f3
    [m,n]=size(notes.l4.f3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l4.f3,[m_ss,n_ss],'bicubic');
    img_ident(j,6)=corr2(img,l_im3);
    %g3
    [m,n]=size(notes.l4.g3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l4.g3,[m_ss,n_ss],'bicubic');
    img_ident(j,7)=corr2(img,l_im3);
    %a3
    [m,n]=size(notes.l4.a3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l4.a3,[m_ss,n_ss],'bicubic');
    img_ident(j,8)=corr2(img,l_im3);
    %b3
    [m,n]=size(notes.l4.b3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l4.b3,[m_ss,n_ss],'bicubic');
    img_ident(j,9)=corr2(img,l_im3);
    %c4
    [m,n]=size(notes.l4.c4);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l4.c4,[m_ss,n_ss],'bicubic');
    img_ident(j,10)=corr2(img,l_im3);
    %С����
    [m,n]=size(notes.cut);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.cut,[m_ss,n_ss],'bicubic');
    img_ident(j,11)=corr2(img,l_im3);
    %c3 ��������
    [m,n]=size(notes.l2.c3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l2.c3,[m_ss,n_ss],'bicubic');
    img_ident(j,12)=corr2(img,l_im3);
    %d3
    [m,n]=size(notes.l2.d3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l2.d3,[m_ss,n_ss],'bicubic');
    img_ident(j,13)=corr2(img,l_im3);
    %e3
    [m,n]=size(notes.l2.e3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l2.e3,[m_ss,n_ss],'bicubic');
    img_ident(j,14)=corr2(img,l_im3);
    
    [m,n]=size(notes.l2.f3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l2.f3,[m_ss,n_ss],'bicubic');
    img_ident(j,15)=corr2(img,l_im3);
    
    [m,n]=size(notes.l2.g3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l2.g3,[m_ss,n_ss],'bicubic');
    img_ident(j,16)=corr2(img,l_im3);
    
    [m,n]=size(notes.l2.a3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l2.a3,[m_ss,n_ss],'bicubic');
    img_ident(j,17)=corr2(img,l_im3);
    
    [m,n]=size(notes.l2.b3);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l2.b3,[m_ss,n_ss],'bicubic');
    img_ident(j,18)=corr2(img,l_im3);
    
    [m,n]=size(notes.l2.c4);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.l2.c4,[m_ss,n_ss],'bicubic');
    img_ident(j,19)=corr2(img,l_im3);
    %�ķ���ֹ��
    [m,n]=size(notes.stop1);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.stop1,[m_ss,n_ss],'bicubic');
    img_ident(j,20)=corr2(img,l_im3);
    %������ֹ��
    [m,n]=size(notes.stop2);
    [m_s,n_s]=size(img);
    if m~=m_s||n~=n_s
        m_ss=min(m,m_s);
        n_ss=min(n,n_s);
    end
    img=imresize(img,[m_ss,n_ss],'bicubic');
    l_im3=imresize(notes.stop2,[m_ss,n_ss],'bicubic');
    img_ident(j,21)=corr2(img,l_im3);
end


end