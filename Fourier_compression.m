function [comp, dist] = Fourier_compression(I, thresh, show)

n = size(I, 1);
[F, Finv] = generate_Fourier_matrices(log(n) / log(2));
Icomp = F * I * F;

c = 0;

for i = 1 : n
    for j = 1 : n
        if abs(Icomp(i, j)) < thresh
            Icomp(i, j) = 0;
            c = c + 1;
        end 
    end
end

%percent of compressed coefficient
comp = c / (n^2);

If = Finv * Icomp * Finv;
dist = norm(I - If) / norm(I);

if show
    imshow(uint8(If))
end