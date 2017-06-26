% x = [2,3,4.5,5.5,2];
% y = [5,17,8,8,17];
% plot(x,y)
% 
% r = 2;
% t = linspace(0,2*pi);
% x = r*cos(t);
% y = r*sin(t);
% plot(x,y)
% 
% x = linspace(0,4);
% g = x.^3;
% h = exp(x);
% z = exp(x.^2);
% plot(x,x);
% hold on
% plot(x,g)
% hold on
% plot(x,h)
% hold on
% plot(x,z)
% axis([0 4 0 4]);
% title('Exponent Function')
% xlabel('x-axis');
% ylabel('y-axis');
% 
% t = linspace(0,10*pi);
% plot3(t.*sin(t),t.*cos(t),t);
% 
% [t,s] = meshgrid(0:0.1:2*pi, 0:0.1:2*pi);
% x = cos(t).*cos(s);
% y = cos(t).*sin(s);
% z = sin(t);
% surf(x,y,z)