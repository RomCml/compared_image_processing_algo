I = double(imread('lena.jpg'));
N = 25;

store_compF = zeros(N, 1);
store_distF = zeros(N, 1);
store_compH = zeros(N, 1);
store_distH = zeros(N, 1);
for i = 0 : N
    tr(i) = i*10;
end
for i = 1 : N
    t = tr(i);
    [compF, distF] = Fourier_transform(I, t, 0);
    [compH, distH] = Haar_transform(I, t, 0);
    store_compF(i) = compF;
    store_distF(i) = distF;
    store_compH(i) = compH;
    store_distH(i) = distH;
end

figure(1)
plot(store_compF, 'b')
hold on
plot(store_compH, 'r')
%we see on the plot of figure 1 that compression rate is similar for both
%methods.

figure(2)
plot(store_distF, 'b')
hold on
plot(store_distH, 'r')
%we see on the plot of figure 2 that distance is smaller for Haar wavelets 
%method