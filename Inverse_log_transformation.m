a=imread('socity.png');
 b=rgb2gray(a);
 a1=double(a)/255;
 c=2;
 s=exp(c*(a1.^1.5 -1));
 subplot(2,2,1),imshow(a),title('original image');
 subplot(2,2,2),imshow(s),title(' inverse log transformation ');

