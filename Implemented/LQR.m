system = ss(A, B, C, D);
[K, P, E] = lqr(system, Q, R);

KK = lqr(A,B,Q,R);
p1 = [1i*2.8; -1i*2.8; 1i*1.5; -1i*1.5]; % oscillatory
p2 =[-8+1i*2; -8-1i*2; -7+1i*2; -7-1i*2 ]; % underdamped

p3 =[-8; -10; -4.5; -5.8];  % stable. 
p4 =[-20; -15.5; -45.5; -4.8];  % Fast or Aggressive.
k = place(A,B,p3);