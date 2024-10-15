clc;         % Clear the command window
clear;       % Clear all variables from the workspace

% System of equations:
% 3X1 + X2 + 2X3 = 3
% X1 + 4X3 = 2
% 5X1 + 3X2 + X3 = 1

% This script solves the system of equations AX = B using Cramer's Rule.

% Define matrix A (coefficients of the variables in the equations)
A = [3 1 2; 
     1 0 4; 
     5 3 1]; 

% Define matrix B (right-hand side of the equations)
B = [3; 
     2; 
     1]; 

% Calculate the determinant of matrix A and store it in variable C
C = det(A);  

% Define matrices C1, C2, and C3 by replacing the respective columns of A with matrix B
C1 = [3 1 2;    % First column replaced by B
      2 0 4; 
      1 3 1]; 

C2 = [3 1 2;    % Second column replaced by B
      1 2 4; 
      5 1 1]; 

C3 = [3 1 2;    % Third column replaced by B
      1 0 2; 
      5 3 1]; 

% Calculate the values of X1, X2, and X3 using Cramer's Rule
% X1 is found by dividing the determinant of A by the determinant of C1
X1 = C / det(C1);  

% X2 is found by dividing the determinant of A by the determinant of C2
X2 = C / det(C2);  

% X3 is found by dividing the determinant of A by the determinant of C3
X3 = C / det(C3);  

% Display the results
disp('The solution is:');
disp(['X1 = ' num2str(X1)]);
disp(['X2 = ' num2str(X2)]);
disp(['X3 = ' num2str(X3)]);
