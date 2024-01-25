% Nathaniel Valla
% ESD II LAB 1

xNumPix = 752;          % total number of pixels in x direction of the sensor [px]
cxLeft = xNumPix/2;     % left camera x center [px]
cxRight = xNumPix/2;    % right camera x center [px]
shift = 0:xNumPix/2;
xLeft = cxLeft;
xRight = cxRight;

function Z = depth(xLeft,xRight,cxLeft,cxRight)
  b = 60;                 % baseline [mm]
  f = 6;                  % focal length [mm] 
  ps = .006;              % pixel size [mm]

  d = (abs((xLeft-cxLeft)-(xRight-cxRight))*ps);  % disparity [mm]
  Zmm = (b * f)./d;       % depth [mm]
  Z = Zmm./1000;          % depth [m]
end