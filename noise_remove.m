i=imread('socity.png');
im=rgb2gray(i);
%salt & pepper 
isp=imnoise(im,'salt & pepper' ,0.05);
m=medfilt2(isp);
%apply median filter
medf=@(x)median(x(:));
med=nlfilter(isp,[3,3],medf);



figure
subplot(2,3,1);imshow(im);title('original image');
subplot(2,3,2);imshow(isp);title('with salt & pepper noise');
subplot(2,3,3);imshow(med);title('filter image with median');

%###################################################
si=imnoise(i,'salt & pepper');
gi=imnoise(i,'gaussian');
kr=7;
kc=7;
%apply arithmetic mean filter
w=ones(kr,kc)/(kr*kc);
st=imfilter(si,w,'replicate');
gt=imfilter(gi,w,'replicate');

figure
subplot(2,3,1);imshow(i);title('original image');
subplot(2,3,2);imshow(si);title('with salt & pepper noise');
subplot(2,3,3);imshow(gi);title('with gaussian noise');
subplot(2,3,5);imshow(st);title('salt & pepper noise(filtered) ');
subplot(2,3,6);imshow(gt);title('gaussian noise(filterd)');

