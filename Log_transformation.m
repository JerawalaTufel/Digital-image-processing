a=imread('socity.png');
 
 a1=double(a)/255;
 c=2;
 f=c*log(1 + (a1));
 subplot(1,2,1),imshow(a),title('original Image');
subplot(1,2,1),imshow(a),title('original Image');
 subplot(1,2,2),imshow((f)),title('Log Transformation Image');
