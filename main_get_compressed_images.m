I = double(imread('lena.jpg'));

%image with no compression (the original one)
[compF0, distF0] = Fourier_compression(I, 0, 1);
[compH0, distH0] = Haar_compression(I, 0, 1);

%image with 99.1 percent of compressed coefficients
[compF125, distF125] = Fourier_compression(I, 125, 1);
[compH125, distH125] = Haar_compression(I, 125, 1);

%image with 99.65 percent of compressed coefficients
[compF250, distF250] = Fourier_compression(I, 250, 1);
[compH250, distH250] = Haar_compression(I, 250, 1);
