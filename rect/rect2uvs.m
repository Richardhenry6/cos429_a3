function mot = rect2uvs(r1, r2)
% rect2uvs  compute uvs from 2 rectangles
%
% mot = rect2uvs(r1, r2)
%
% r1 -> r2 -  the rectangles 
%
% if the 2 dimentions of scale are not the same, then their scale is averaged...
  
  c1 = rectCenter(r1); s1 = rectSize(r1);
  c2 = rectCenter(r2); s2 = rectSize(r2);
  
  %fill in here
  mot = ...
