clear;clc;close all;
Files=dir('F:\train\train\train5600\1852\pos\*.jpg');%��ȡͼ��·��
N=length(Files);
Names={};
for k=1:N
        Names{k}=Files(k).name;
        B = imread(['F:\train\train\train5600\1852\pos\' Names{k}]);%��ȡͼ�� 
%        n = unidrnd(180);%n������������ͬ�ĸ��ʳ�������ɢ���ȷֲ������������
%        PSF = fspecial('motion',4,n);	%�˶�ģ���������˶�λ����15���أ��Ƕ���n
%        B=imfilter(B,PSF,'conv','circular');%��ͼ���˶�ģ������
%        B = imnoise(B, 'salt & pepper', 0.1);%��������
%        B = imnoise(B, 'speckle', 0.01);%�ߵ�����
%         B = imnoise(B, 'gaussian', 0.01);%��˹����
         B = rgb2gray(B);%�Ҷȴ���
%         B = imresize(B,[20,20]);%��ͼ������Ϊ20*20�Ĵ�С
%        B1 = imadjust(B,[0.3,1],[0.3,1]);%ͼ�����Ա任
%         B2 = imadjust(B,[0,1],[0,0.7]);
%         B3 = imadjust(B,[0,1],[0.3,1]);
%         B4 = imadjust(B,[0,1],[0.2,0.8]);
%         B5 = imadjust(B,[0,0.7],[0,1]);
%         B6 = imadjust(B,[0.3,1],[0,1]);
%         B7 = imadjust(B,[0.3,0.7],[0,1]);
        path='F:\train\piture\�ߴ�30\20��48_64\'; %ͼ�����ı���·��
        file=Files(k).name; 
        pathfile=fullfile(path,file); 
        imwrite(B,pathfile,'jpg');%����ͼ��
end