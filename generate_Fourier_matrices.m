function [F1, F2] = generate_Fourier_matrices(m)
n = 2^m;
F1 = zeros(n);
F2 = zeros(n);
w = exp(2 * 1i * pi / n);
for k = 1 : n
    for l = 1 : n
        F1(k, l) = (1 / sqrt(n)) * w^(- (l - 1) * (k - 1));
        F2(k, l) = (1 / sqrt(n)) * w^((l - 1) * (k - 1));
    end
end
F1 = F1 / norm(F1);
F2 = F2 / norm(F2);