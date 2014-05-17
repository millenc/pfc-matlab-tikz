clearvars;
clear temp;
addpath('./includes'); %NOTA: Se podría utilizar linspace
addpath('./src');

% Universo de referencia
x=0:1:100;

% Rangos en los que x tiene valor
x_low = 0:1:40;
x_medium = 10:1:90;
x_high = 60:1:100;


% Parámetros para mejorar la visualización de datos
width = 3;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 11;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

pos = get(gcf, 'Position');
%set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
%plot([0,40],[1,0],'b-',[10,50],[0,1],'m-',[50,90],[1,0],'m-',[60,100],[0,1],'r-','LineWidth',lw,'MarkerSize',msz);
plot(x_low,arrayfun(@temp.low,x_low),'k-',x_medium,arrayfun(@temp.medium,x_medium),'k-',x_high,arrayfun(@temp.high,x_high),'k-','LineWidth',lw,'MarkerSize',msz);
%text(7,1.5,'Baja (\mu_{Tº Baja}(x))')
text(1, 1.05, 'Baja (\mu_{Baja}(x))', 'clipping', 'off');
text(40, 1.05, 'Media (\mu_{Media}(x))', 'clipping', 'off');
text(80, 1.05, 'Alta (\mu_{Alta}(x))', 'clipping', 'off');
xlabel('x - Temperatura');

matlab2tikz('example-temp-lang-variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');
