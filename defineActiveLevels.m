function Ls = defineActiveLevels(prect, mep1, mep2, params)
% defines the levels on which we need to operate...
% the rule is: there must be at least params.min_pix(1) 
% pixels to work on 

  s = rectSize(prect);
  %fill in here
  minlev = ...
  maxlev = ...

  Ls = minlev:maxlev;
  
