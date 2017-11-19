function Ls = defineActiveLevels(prect, mep1, mep2, params)
% defines the levels on which we need to operate...
% the rule is: there must be at least params.min_pix(1) 
% pixels to work on 

  s = rectSize(prect);
  
  %fill in here
  h = size(mep2);
  h1 = size(mep1);
  count = 1;
  count1 = 1;
  minlev = 1;
  for i = 1:h-1
      nrest = rectChangeLevel(prect,minlev,i+1);
      whv = rectSize(nrest);
      
      if(whv(1)*whv(2) <= params.min_pix(1))
        break;
      end
      count = count + 1;
  end
  
  for i = 1:h1-1
      nrest = rectChangeLevel(prect,minlev,i+1);
      whv = rectSize(nrest);
      
      if(whv(1)*whv(2) <= params.min_pix(1))
        break;
      end
      count1 = count1 + 1;
  end

  if(count <= count1)
    maxlev = count;
  else
    maxlev = count1;
  end
  maxlev
  pause(1);
  Ls = minlev:maxlev;
  
