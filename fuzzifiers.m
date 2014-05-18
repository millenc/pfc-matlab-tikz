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

% singleton
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
plot(x,y,'k-',40,1,'*',[40 40],[0 1],':k','LineWidth',lw,'MarkerSize',msz);
set(gca,'xticklabel',{[]})
set(gca, 'box', 'off')
text(42, 0.95, '(x*,\mu_{A''}(x*))', 'clipping', 'off');
xlabel('x');
ylabel('\mu_{A''}(x)');
matlab2tikz('fuzzifier_singleton.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

% gaussian
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
plot(x,gaussmf(x,[10 40]),'k-',40,1,'*',[40 40],[0 1],':k','LineWidth',lw,'MarkerSize',msz);
set(gca,'xticklabel',{[]})
set(gca, 'box', 'off')
text(44, 0.96, '(x*,\mu_{A''}(x*))', 'clipping', 'off');
xlabel('x');
ylabel('\mu_{A''}(x)');
matlab2tikz('fuzzifier_gaussian.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

% triangular
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
plot(x,trapmf(x,[20 40 40 60]),'k-',40,1,'*',[40 40],[0 1],':k','LineWidth',lw,'MarkerSize',msz);
set(gca,'xticklabel',{[]})
set(gca, 'box', 'off')
text(44, 0.96, '(x*,\mu_{A''}(x*))', 'clipping', 'off');
xlabel('x');
ylabel('\mu_{A''}(x)');
matlab2tikz('fuzzifier_triangular.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');
