function nmot = uvsChangeLevel(mot, oldlev, newlev)
% uvsChangeLevel  change the pyramid level of the motion 
%
% nmot = uvsChangeLevel(mot, oldlev, newlev)
% 
  %fill in here
  U=1;
  V=2;
  S=3;
  X0=4;
  X1=5;
 
  nmot = mot;
  factor = 2^(oldlev-newlev);
  nmot(S) = factor;