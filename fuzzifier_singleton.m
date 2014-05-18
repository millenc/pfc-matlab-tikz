clearvars;
clear temp;
addpath('./includes'); %NOTA: Se podría utilizar linspace
addpath('./src');

% Universo de referencia
x=0:1:100;
y=zeros(1,101);

% Parámetros para mejorar la visualización de datos
width = 3;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 11;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

figure;
pos = get(gcf, 'Position');
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
plot(x,y,'b-',30,1,'*',[30 30],[0 1],':k','LineWidth',lw,'MarkerSize',msz);
set(gca,'xticklabel',{[]})
set(gca, 'box', 'off')
text(32, 0.95, '(x*,\mu_{A''}(x*))', 'clipping', 'off');
xlabel('x');
ylabel('\mu_{A''}(x)');
matlab2tikz('fuzzifier_singleton.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');
