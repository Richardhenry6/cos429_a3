function Ls = defineActiveLevels(prect, mep1, mep2, params)
% defines the levels on which we need to operate...
% the rule is: there must be at least params.min_pix(1) 
% pixels to work on 

  h1 = length(mep2);
  h2 = length(mep1);
  count = 1;
  minlev = 1;
  
  %Lower bound the number of possible levels
  if(h1 <= h2)
      h = h1;
  else
      h = h2;
  end
  
  new1 = rectSize(prect);
  nrest = prect;
  
  %For loop to go through each accending level
  for i = 1:h
       nrest = rectChangeLevel(nrest,i,i+1);
       whv = rectSize(nrest);
   
      if(floor(whv(1)*whv(2)) <= params.min_pix(1))
        break;
      end
      count = count + 1;
  end
  
  %If the count is greater than what is allowed, bound it by the smaller
  %amount
  if(count > h)
      maxlev = h;
  else
      maxlev = count;
  end
  
  Ls = minlev:maxlev;
  
