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
  
  [u] = c2(:,1)-c1(:,1); 
  [v] = c2(:,2)- c1(:,2);
  s1aspect = s1(:,1)./s1(:,2);
  s2aspect = s2(:,1)./s2(:,2);
  if (s1aspect ~= s2aspect)  
      s1aspect = (s1aspect+s2aspect)./2;
  end
  s1area = s1(:,1).*s1(:,2); 
  s2area = s2(:,1).*s2(:,2);
  s1aspect;
  s = (s2(:,1)-s1(:,1))./s1(:,1);
  
  mot = [ u v s c1]; 
  
  %fill in here

