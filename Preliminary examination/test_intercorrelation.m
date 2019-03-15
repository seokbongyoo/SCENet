clear;
close all;

im=double(imread('lena_q_10.jpg'));
Mask = zeros(size(im));
[corr_dc,corr_ac1,corr_ac2]=interblock_corr(im,Mask,8);
Corr_dc_c=corr_dc;
Corr_ac1_c=corr_ac1;
Corr_ac2_c=corr_ac2;

im=double(imread('lena_q_20.jpg'));
[corr_dc,corr_ac1,corr_ac2]=interblock_corr(im,Mask,8);
Corr_dc_c2=corr_dc;
Corr_ac1_c2=corr_ac1;
Corr_ac2_c2=corr_ac2;

im=double(imread('lena_q_30.jpg'));
[corr_dc,corr_ac1,corr_ac2]=interblock_corr(im,Mask,8);
Corr_dc_c3=corr_dc;
Corr_ac1_c3=corr_ac1;
Corr_ac2_c3=corr_ac2;

im=double(imread('lena.bmp'));
[corr_dc,corr_ac1,corr_ac2]=interblock_corr(im,Mask,8);
Corr_dc=corr_dc;
Corr_ac1=corr_ac1;
Corr_ac2=corr_ac2;

[n,x]=hist(Corr_dc);
[n_c,x]=hist(Corr_dc_c);
[n_c2,x]=hist(Corr_dc_c2);
[n_c3,x]=hist(Corr_dc_c3);
n=100*n/sum(n);
n_c=100*n_c/sum(n_c);
n_c2=100*n_c2/sum(n_c2);
n_c3=100*n_c3/sum(n_c3);
figure
bar(x(7:10),[n_c(7:10); n_c2(7:10); n_c3(7:10); n(7:10)]','group')
h_legend=legend('\fontname{times new roman}Coded(q=10)','\fontname{times new roman}Coded(q=20)','\fontname{times new roman}Coded(q=30)','\fontname{times new roman}Original');
set(h_legend,'fontsize',15);
colormap([1 1 1;0 0 0])
