[X,Y] = meshgrid(0:.1:1);

%Máximo
M = max(X,Y);
figure;
surf(X,Y,M);
%colorbar;
xlabel('x');
ylabel('y');
zlabel('S_{max}(x,y)');
matlab2tikz('max-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

%Suma probabilística
P = X+Y-X.*Y;
figure;
surf(X,Y,P);
xlabel('x');
ylabel('y');
zlabel('S_{P}(x,y)');
matlab2tikz('probabilistic-sum-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

%Suma acotada
L=min(X+Y,1);
figure;
surf(X,Y,L);
xlabel('x');
ylabel('y');
zlabel('S_{B}(x,y)');
matlab2tikz('bounded-sum-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');