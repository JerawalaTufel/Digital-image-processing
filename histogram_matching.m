A = imread('input1.png');
ref = imread('ref1.png');

B = imhistmatch(A,ref);

subplot(2,3,1),imshow(A);
title('Input Image');
subplot(2,3,2),imshow(ref);
title('Refrence Image');
subplot(2,3,3),imshow(B);
title('Output Image');
subplot(2,3,4),imhist(A);
title('Input image');
subplot(2,3,5),imhist(ref);
title('ref Image');
subplot(2,3,6),imhist(B);
title('histmatch Image');