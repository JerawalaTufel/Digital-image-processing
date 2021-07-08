i=imread('socity.png');
im=rgb2gray(i);

kr=7;
kc=7; 

%arithmetic mean
h=fspecial('average',3);
a=imfilter(i,h);

% replicate is boundary pedding option
% diff. option are 'symmetric' and 'circular'

%w=ones(kr,kc)/(kr*kc);
%st=imfilter(i,w,'replicate');

%Geometric mean 

c=im2double(i);
f=exp(imfilter(log(c),ones(kr,kc),'replicate')).^(1/(kr*kc));

%harmonic mean

h =(kr*kc)./imfilter(1./(c+eps),ones(kr,kc),'replicate');

%contraharmonic mean
ord=1;
ch=imfilter(c.^(ord+1),ones(kr,kc),'replicate')./imfilter(c.^(ord),ones(kr,kc),'replicate');



subplot(2,3,1);imshow(i);title("original image")
subplot(2,3,2);imshow(a);title("arithmetic mean filter")
subplot(2,3,3);imshow(f);title("Geometric mean filter")
subplot(2,3,5);imshow(h);title("harmonic mean filter")
subplot(2,3,6);imshow(ch);title("contraharmonic mean filter")