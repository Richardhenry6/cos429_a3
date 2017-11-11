function drawFaceSequence(fs, from, step, number, rects)
% drawFaceSequence  
%
% drawFaceSequence(fs, from, step, number, rects)
%fill in here  

  for i = from:number
    co = fs.readImage(i * step + from);
    imageco(co);
    if(nargin>=5)
      rectDraw(rects(i,:));
    end
    pause(0.2);
  end
end
