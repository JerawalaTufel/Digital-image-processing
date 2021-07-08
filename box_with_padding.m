A = imread('socity.png');
B = rgb2gray(A);

[r1,c1] = size(B);

r2 = r1 + 2;
c2 = c1 + 2;

newb = uint16(zeros(r2,c2));

C = uint8(zeros(r1,c1));

for i = 2:r2-1
    for j = 2:c2-1
        newb(i,j) = B(i-1,j-1);
    end
end

for i = 1:r1
    for j = 1:c1
        C(i,j) = (newb(i,j) + newb(i,j+1) + newb(i,j+2) + newb(i+1,j) + newb(i+1,j+1) + newb(i+1,j+2) + newb(i+2,j) + newb(i+2,j+1) + newb(i+2,j+2))/9;
    end
end

newb = uint8(newb);

subplot(2,2,1),imshow(A), title('Original Image');
subplot(2,2,2),imshow(B), title('Gray Scale Image');
subplot(2,2,3),imshow(newb), title('Gray Scale Image with padding');
subplot(2,2,4),imshow(C), title(' Box filter Image with padding');