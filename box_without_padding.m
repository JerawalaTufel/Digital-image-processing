A = imread('socity.png');
B = rgb2gray(A);

[r1,c1] = size(B);

r2 = r1 - 2;
c2 = c1 - 2;

newb = uint16(B);

C = uint8(zeros(r2,c2));

for i = 1:r2
    for j = 1:c2
        C(i,j) = (newb(i,j) + newb(i,j+1) + newb(i,j+2) + newb(i+1,j) + newb(i+1,j+1) + newb(i+1,j+2) + newb(i+2,j) + newb(i+2,j+1) + newb(i+2,j+2))/9;
    end
end

C = uint8(C);

subplot(1,3,1),imshow(A), title('Original Image');
subplot(1,3,2),imshow(B), title('Gray Scale Image');
subplot(1,3,3),imshow(C), title(' Box filter Image without padding');