i=imread('socity.png');
im=rgb2gray(i);

kr=7;
kc=7;
c=im2double(i);

% replicate is boundary pedding option
% diff. option are 'symmetric' and 'circular'

%median filter

m=medfilt2(im);

%medf=@(x)median(x(:));
%med=nlfilter(im,[kr,kc],medf);

%max and min filter

minf=@(x)min(x(:));
maxf=@(x)max(x(:));

mini=nlfilter(im,[kr kc],minf);
maxi=nlfilter(im,[kr kc],maxf);

%midpoint filter
mid=(mini + maxi)/2;

%alpha-trimmed filter
d=((kr*kc)-1)/2; % if d=0 -> arithmetic filter and d=(mn-1)/2 median filter  
w=ones(kr,kc)/((kr*kc)-d);
at=imfilter(i,w,'replicate');

subplot(2,3,1);imshow(im);title("original image")
subplot(2,3,2);imshow(m);title("median filter")
subplot(2,3,3);imshow(mini);title("min filter")
subplot(2,3,4);imshow(maxi);title("max filter");
subplot(2,3,5);imshow(mid);title("midpoint filter");
subplot(2,3,6);imshow(at);title("alpha-trimmed filter");
