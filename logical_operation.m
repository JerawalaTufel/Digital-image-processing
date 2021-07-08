a=imread('1.jpg');
b=imread('3.jpg');
 z=bitand(a,b);
 x=bitor(a,b);
 y=bitxor(a,b);
 a1=bitcmp(a);
 b1=bitcmp(b);

 subplot(2,4,1),imshow(z),title('and');
 subplot(2,4,2),imshow(x),title('or');
 subplot(2,4,3),imshow(y),title('xor');
 subplot(2,4,4),imshow(a1),title('not a');
 subplot(2,4,5),imshow(b1),title('not b');
  subplot(2,4,7),imshow(a),title('A image');
   subplot(2,4,8),imshow(b),title('B image');
