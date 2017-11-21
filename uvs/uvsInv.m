function motinv = uvsInv(mot)
% uvsInv  invert the transScaleUV motion 
%
% motinv = uvsInv(mot)
%
% motinv is defined such that: 
%    uvsPlus(mot,motinv) -> zero motion with center at mot's center;

%Fill in here
% enum
U = 1;
V = 2;
S = 3;
X0 = 4;
Y0 = 5; 
g = zeros(size(mot));

%Calculate the inverse motion by using the hint above
zero_motion = [ g(:,U) g(:,U) g(:,U) mot(:,X0) mot(:,Y0)]; 
motinv = uvsMinus(zero_motion , mot);  