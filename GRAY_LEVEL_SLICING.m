a=imread('socity.png');
b=rgb2gray(a);

[r,c]=size(b);

newb=zeros(r,c);

for i=1:r
  for j=1:c
    if b(i,j)>=150 %ntensity level
      newb;
    else
      newb(i,j)=255;
    end
  end
end

subplot(1,2,1),imshow(b);
subplot(1,2,2),imshow((newb));
