[X,Y] = meshgrid(0:.1:1);

%Mínimo
M = min(X,Y);
surf(X,Y,M);
xlabel('x');
ylabel('y');
zlabel('T_{G}(x,y)');
matlab2tikz('min-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

% %Producto
P = X.*Y;
surf(X,Y,P);
xlabel('x');
ylabel('y');
zlabel('T_{P}(x,y)');
matlab2tikz('prod-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

%Lukasiewicz
L=max(X+Y-1,0);
surf(X,Y,L);
%title('Lukasiewicz');
xlabel('x');
ylabel('y');
zlabel('T_{L}(x,y)');
matlab2tikz('luka-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');