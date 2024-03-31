alpha = 120;
ofset = 2.5;
alpha = alpha * pi / 180;
point = [1 1];

dx = 0;
dy = 0;
if alpha > pi/4
    dx = ofset/(cos(pi/2-alpha));
else
    dy = ofset/(sin(pi/2-alpha));
end

pOf(1) = point(1) + dx;
pOf(2) = point(2) + dy;

x = -10:0.1:10;
tan(alpha)
y1 = tan(alpha)*(x-point(1))+point(2);
y2 = tan(alpha)*(x-pOf(1))+pOf(2);

plot(x, [y1;y2]);
axis equal
