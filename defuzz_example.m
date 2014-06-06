%Ejemplo de aplicación de diferentes métodos de desdifusificación a una
%función de pertenencia

clearvars;
%Generar la curva
x=0:1:100;
y=max(trapmf(x,[0 10 30 60]).*0.6,max(trapmf(x,[10 40 60 80]),trapmf(x,[60 70 90 100]).*0.4));

%Aplicar métodos
dc = round(defuzz(x, y, 'centroid'));
db = round(defuzz(x, y, 'bisector'));
dm = round(defuzz(x, y, 'mom'));
ds = round(defuzz(x, y, 'som'));
dl = round(defuzz(x, y, 'lom'));

% Parámetros para mejorar la visualización de datos
width = 3;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 9;      % Fontsize
lw = 1.2;      % LineWidth
msz = 9;       % MarkerSize

figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
plot(x,y,'-k',dc,y(dc+1),'*',db,y(db+1),'+',dm,y(dm+1),'s',ds,y(ds+1),'v',dl,y(dl+1),'^','LineWidth',lw,'MarkerSize',msz);
legend('\mu(x)','centroid','bisector','mom','som','lom');
set(gca,'xticklabel',{[]})
set(gca, 'box', 'off')
matlab2tikz('defuzzifiers.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');
