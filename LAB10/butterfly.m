function x = butterfly()

  x=[0,5,10,9,7,5,4,2,0];
  y=[1,0,-1,0,1,0,-1,0,1];
  t = 1:9;

  th = linspace(1, 9);
  xh = interp1(t,x,th, 'spline');
  yh = interp1(t,y,th, 'spline');
  plot(xh, yh, 'w', 'linewidth', 5)
  hold on;
  plot(x, y, 'ro', 'linewidth', 3)

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  x=[4.7,4.5,4.8];
  y=[-0.5,0,0.7];
  t = 1:3;

  th = linspace(1, 3);
  xh = interp1(t,x,th, 'spline');
  yh = interp1(t,y,th, 'spline');
  plot(xh, yh, 'w', 'linewidth', 5)
  hold on;
  plot(x, y, 'ro', 'linewidth', 3)

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  x=[4.7,4.9,4.2];
  y=[-0.5,0,0.7];
  t = 1:3;

  th = linspace(1, 3);
  xh = interp1(t,x,th, 'spline');
  yh = interp1(t,y,th, 'spline');
  plot(xh, yh, 'w', 'linewidth', 5)
  hold on;
  plot(x, y, 'ro', 'linewidth', 3)
  whitebg('black')
  title('Butterfly','Color','b','Fontsize',10);