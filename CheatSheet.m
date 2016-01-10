%Basics of Matlab that are unusual    
    %This is how you comment

    clear % clears every variable from memory

    clc % clears the console
    
%Vectors/Arrays
    % It's vector based so variables are vectors (arrays) by default
    a = 3;
    b = [1 2 3 4 5];
    % the ; stops the line's results being printed to the colsole

    ary = [1 2 3 4 5];
    %same as:
    ary = 1:5;
    %ary filled with values from 1 to 5

    length(ary);
    %gets length of array ary

%Matrices    
    mat = zeros(a, a);
    % fills a matrix mat with an axb matrix with each value 0

    mat(1,2) = 5;
    %sets row 1 colomn 2 to 5, ie mat = [0 5 0; 0 0 0; 0 0 0;]

    size(mat);
    %gives size of matix mat ie 3 3

    mat = rand(5,6);
    % gives a 5x6 matrix of random numbers between 0 and 1

%Logic and Loops
    if a == 4
        %do something
    elseif a == 5
        %do something else
    else
        %do a different thing
    end


    for i = 1: 10 % in C: for(i = 1; i <= 10, i++)
        %do this 10 times
    end


    while i == true
        %keep doing this
    end



