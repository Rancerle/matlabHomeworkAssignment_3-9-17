%% 5b

X = [4,-8,3,1]; %sets the vector
norm(X,inf); %calculates the norm

% norm is reported as 8

%% 6a
A = [1,1,1;2,3,4;3+10^-5,4,5;]; %sets matrix A
b = [6;20;26+10^-5;]; %sets vector b

x = A\b; %solves for X

r = [1;2;3;]; %true value of X
e = [6;20;26]; %true value of b

t = x - r; % calculates deltaX
u = b - e; % calculates deltab

sol1 = (norm(t, inf)/ norm(x,inf)); %finds ||deltaX||/||X||
sol2 = (norm(u, inf)/ norm(b,inf)); %finds ||deltab||/||b|

% ||deltaX||/||X|| is found to be roughly [4.73221462015107e-12]
% ||deltab||/||b|| is roughly [3.84615236671887e-07]

%% 6b 
C = [1,1,1;2,3,4;3+10^-8,4,5;]; %sets matrix C
d = [6;20;26+10^-8;]; %sets vector d

y = C\d; %solves for X

r = [1;2;3;]; %true value of X
e = [6;20;26]; %true value of b

t = y - r; % calculates deltaX
u = d - e; % calculates deltab

sol1 = (norm(t,inf)/norm(y,inf));
sol2 = (norm(u,inf)/norm(d,inf)); %finds ||deltab||/||b||

%||deltaX||/||X|| is found to be roughly [1.28671341641928e-08]
%||deltab||/||b|| is roughly [3.84615416290675e-10]

%% 7b

A = [2,-4,-9;
    -3, 8, 3;
     1, 7,-5;]; % sets Matrix A
 
 norm(A, inf); %calculates the norm of matrix A
 
 %norm is reported as 15

%% 11b

A = [9,  1, 19, 7;
     2, -4, -9, 0;
     1, -2, -5, 0;
     3,  2, 26, 3;]; %sets matrix A

cond(A); % calculates the conditional of matrix A

% Conditional is reported as [27747.0821424105]

%% 2.3.44

A = hilb(5); %generates the fifth order hilbert matrix
 
 Y = inv(A); %inverts the fifth order of the hilbert matrix
 
 b = [629.999999999324;-12599.9999999893;56699.9999999591;-88199.9999999438;44099.9999999745];
 %sets b to be a colum vector containing the fifth colum of the inverse of the hilbert matrix
 
 x = A\b;%solves Ax = b for the vector X
 
 %X = [214593749.998704;
 %     -4058774999.97625;
 %      -17612437499.8991;
 %      -26702549999.8492;
 %          13098096899.9269;];

 %I don't expect the digits in X are exact considering how the vector b
 %does not contain the vector of values perscribed in the book, but rather
 %decimals that are extremely close to those values.  Ordinarily the margin
 %of error would not be significant but considering the order on which the
 %vector X sets its values, it is possible that the actual solution is much
 %different.
 
%% 2.3.45

A = hilb(12); 
%creates a twelvth order hilbert matrix (because reasons apparently)

B = inv(A);
%assigns B the inverse of the twelvth order hilbert matrix

result = A*B;
%determines the product of A and A inverse

%results are a "close but no cigar" approximation of an identity matrix
% it is worth noting that the console warned me about innacurate results so
% the program knows that the approximation taking place is generating a
% margin of error.  
