function [comp, dist] = Haar_compression(I, thresh, show)

n = size(I, 1);
H = generate_Haar_wavelets(log(n) / log(2));
Icomp = H'^(-1) * I * H^(-1);

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

If = H' * Icomp * H;
dist = norm(I - If) / norm(I);

if show
    imshow(uint8(If))
end