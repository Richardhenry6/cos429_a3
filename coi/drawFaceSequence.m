function drawFaceSequence(fs, from, step, number, rects)
% drawFaceSequence  
%
% drawFaceSequence(fs, from, step, number, rects)
%fill in here  

  for i = 1:(number+1)
    co = fs.readImage((i-1) * step+from);
    imageco(co);
    if(nargin>=5)
      rectDraw(rects(i,:));
    end
    pause(.2);
  end
end
