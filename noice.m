A = imread('socity.png');
A_gaussian_Noise= imnoise(A,'gaussian');
m= 0.05;
A_gaussian_Noise_mean = imnoise(A,'gaussian',m);
A_poisson_noise= imnoise(A,'poisson');
A_salt_pepper_noise = imnoise(A,'salt & pepper');
A_multiplicative_noise = imnoise(A,'speckle');
subplot(3,4,1),imshow(A);title('Original Image')
subplot(3,4,2),imhist(A);title('Histogram of Original')
subplot(3,4,3),imshow(A_gaussian_Noise);title('Gaussian Noise')
subplot(3,4,4),imhist(A_gaussian_Noise);title('Histogram of Gaussian Noise')
subplot(3,4,5),imshow(A_gaussian_Noise_mean);title('Gaussian Noise Mean')
subplot(3,4,6),imhist(A_gaussian_Noise_mean);title('Histogram of Gaussian Noise Mean')
subplot(3,4,7),imshow(A_poisson_noise);title('Poisson Noise ')
subplot(3,4,8),imhist(A_poisson_noise);title('Histogram of Poisson noise')
subplot(3,4,9),imshow(A_salt_pepper_noise);title('Salt pepper noise')
subplot(3,4,10),imhist(A_salt_pepper_noise);title('Histogram of Salt Pepper noise')
subplot(3,4,11),imshow(A_multiplicative_noise);title('Multiplicative noise')
subplot(3,4,12),imhist(A_multiplicative_noise);title('Histogram of multiplicative noise')