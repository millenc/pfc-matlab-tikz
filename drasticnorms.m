xx = 0:1:20;
yy = 0:1:20;
aa = 0:0.1:1;
bb = 0:0.1:1;

bell_x = trapmf(xx, [3, 8, 12, 17]);
bell_y = trapmf(yy, [3, 8, 12, 17]);

[x,y] = meshgrid(bell_x, bell_y);
[a,b] = meshgrid(aa, bb);

%T-norma drástica
z1 = zeros(size(a));
z1(find(b==1)) = a(find(b==1));
z1(find(a==1)) = b(find(a==1));
figure;
surf(aa, bb, z1);
xlabel('x'); ylabel('y');
zlabel('T_{D}(x,y)');
matlab2tikz('./output/drastic-tnorm-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

%T-conorma drástica
z1 = ones(size(a));
z1(find(b==0)) = a(find(b==0));
z1(find(a==0)) = b(find(a==0));
figure;
surf(aa, bb, z1); 
xlabel('x'); ylabel('y');
zlabel('S_{D}(x,y)');
matlab2tikz('./output/drastic-tconorm-3dplot.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');
