 a=imread('socity.png');
 b=rgb2gray(a);
 id=im2double(b);
 %  s = c * (r ^ gamma) where c and gamma are positive constants 
 
 output1=2*(id.^0.5);
 output2=2*(id.^1.5);
 output3=2*(id.^3.0);
 subplot(2,2,1),imshow(b),title('original image');
 subplot(2,2,2),imshow(output1),title('output1');
 subplot(2,2,3),imshow(output2),title('output2');
subplot(2,2,4),imshow(output3),title('output3');
