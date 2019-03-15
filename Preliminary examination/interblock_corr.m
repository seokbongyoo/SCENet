function [corr_dc,corr_ac1,corr_ac2]=interblock_corr(im, mask,blocksize)

[m,n]=size(im);
D=dctmtx(blocksize);
D=kron(D,D);
w=8;
for i=1:m/w
    for j=1:n/w
        if w*i+(blocksize-w)<=m && w*j+(blocksize-w)<=n
            z=reshape(im(w*i-(w-1):w*i+(blocksize-w),w*j-(w-1):w*j+(blocksize-w))',[blocksize*blocksize 1]);
            DC(i,j)=D(1,:)*z;
            AC1(i,j)=D(2,:)*z;
            AC2(i,j)=D(9,:)*z;
        end
    end
end

mask=imresize(mask,1/blocksize,'nearest');
[m,n]=size(DC);
num=1;
for i=1:m
    for j=1:n
        if  i+4<=m && j+4<=n && length(find(mask(i:i+3,j:j+3)~=0))==0
            dc(num)=min(abs(corr2(DC(i:i+3,j:j+3),DC(i+1:i+4,j:j+3))),abs(corr2(DC(i:i+3,j:j+3),DC(i:i+3,j+1:j+4)))); 
            ac1(num)=min(abs(corr2(AC1(i:i+3,j:j+3),AC1(i+1:i+4,j:j+3))),abs(corr2(AC1(i:i+3,j:j+3),AC1(i:i+3,j+1:j+4)))); 
            ac2(num)=min(abs(corr2(AC2(i:i+3,j:j+3),AC2(i+1:i+4,j:j+3))),abs(corr2(AC2(i:i+3,j:j+3),AC2(i:i+3,j+1:j+4)))); 
            num=num+1;
        end
    end
end

num=1;
for i=1:length(dc)
if dc(i)>0 && dc(i)<=1
corr_dc(num)=dc(i);
num=num+1;
end
end

num=1;
for i=1:length(ac1)
if ac1(i)>0 && ac1(i)<=1
corr_ac1(num)=ac1(i);
num=num+1;
end
end

num=1;
for i=1:length(ac2)
if ac2(i)>0 && ac2(i)<=1
corr_ac2(num)=ac2(i);
num=num+1;
end
end

