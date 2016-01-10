n = 100; %length and width of pyramid base
pyr = zeros(n, n); %creates an nxn matrix with every entry 0
for i = 1: n
    for j = 1: n
        val1 = i;
        val2 = j;
        if (val1 > n/2)
            val1 = n-val1;
        end
        if (val2 > n/2)
            val2 = n-val2;
        end
        pyr(i,j) = (4/3)*(min(val1,val2));
        %max height 2/3 of length of base, 2*(2/3)=4/3
    end
end
surf(pyr) %display surface of pyramid
