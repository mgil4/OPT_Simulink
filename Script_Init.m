%%% Script Init

clear all
clc

r = 0.006; % Motor pinion radius
M_c = 0.135; % Mass of the Cart
I = 0.0007176; % Mass moment of inertia of pendulum rod
l = 0.2; % Pendulum length from pivot to centre of gravity
g = 9.81; % Gravitational constant
b= 0.00007892; % Viscous damping at pivot of pendulum
L = 0.046; 
Rm = 12.5; % Motor armature resistance
kb = 0.031; % Motor back emf constant
kt = 0.031; % Motor torque constant
c = 0.63; % Viscous friction coefficient for cart displacement
m = 0.1; % Mass of the pendulum rod
M = 0.136; % Total cart weight mass including motor inertia

Er = 2*m*g*l;
n= 3;

AA = I*(M+m) + M*m*(l^2);
aa = (((m*l)^2)*g)/AA;
bb = ((I +m*(l^2))/AA)*(c + (kb*kt)/(Rm*(r^2)));
cc  = (b*m*l)/AA;
dd  = (m*g*l*(M+m))/AA;
ee  = ((m*l)/AA)*(c + (kb*kt)/(Rm*(r^2)));
ff  = ((M+m)*b)/AA;
mm = ((I +m*(l^2))*kt)/(AA*Rm*r);
nn = (m*l*kt)/(AA*Rm*r);

A  =  [0 0 1 0; 0 0 0 1; 0 aa -bb -cc; 0 dd -ee -ff];
B = [0;0; mm; nn];
C = eye(4); % Matriu identitat de 4x4
D = zeros(4, 1); % Matriu de zeros de 4x1
Q = diag([1200 1500 0 0]);
R  = 0.035;