clearvars;
addpath('./src');

[X,Y] = meshgrid(0:.1:1);

%Mínimo
M = min(X,Y);
figure;
surf(X,Y,M);
xlabel('x');
ylabel('y');
zlabel('G_{O}(x,y)');
matlab2tikz('./output/overlap-min-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

%sqrt y max(1-x,1-y)
M = sqrt(X.*Y)./(sqrt(X.*Y) + max(1-X,1-Y));
figure;
surf(X,Y,M);
xlabel('x');
ylabel('y');
zlabel('G_{O}(x,y)');
matlab2tikz('./output/overlap-sqrt-max-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

%sqrt y 1-x*y
M = sqrt(X.*Y)./(sqrt(X.*Y) + 1 - X.*Y);
figure;
surf(X,Y,M);
xlabel('x');
ylabel('y');
zlabel('G_{O}(x,y)');
matlab2tikz('./output/overlap-sqrt-2-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');