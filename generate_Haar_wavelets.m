function [H] = generate_Haar_wavelets(n)
H = [1];
for i = 1 : n
    H = [kron(H, [1, 1]) ; kron(eye(2^(i-1)), [1, -1])];
    H = H / (norm(H));
end
