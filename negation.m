a=imread('socity.png');
 imshow(a);
 b=rgb2gray(a);
c=255-b;
 subplot(1,2,1),imshow(b),title('original image');
 subplot(1,2,2),imshow(c),title('negation image');
