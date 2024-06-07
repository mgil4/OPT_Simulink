% Run after the Init_Setup_LQR, or when the matrices (A, B, C, D) needed
% are load in the workspace

%%% Stability test
eigen_values = eig(A);
disp('Valors propis de la matriu A');
disp(eigen_values); 
% Com que tenim un valor propi amb part real positiva, 
% el model no és estable

%%% Dimension of the matrix A
disp('Dimensions of the matrix A:');
disp(size(A));

%%% Controlability test
Ctrl = rank(ctrb(A, B));
disp('Rank de la matriu de controlabilitat: ');
disp(Ctrl);

%%% Observability test
Obsv = rank(obsv(A, C));
disp('Rank de la matriu de observabilitat: ');
disp(Obsv);
