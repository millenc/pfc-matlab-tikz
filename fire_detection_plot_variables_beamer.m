clearvars;
addpath('./src');
addpath('./includes');
% addpath(fullfile('..','pfc-matlab','inferencia','fire_detection','lang_variables'));

x_temp     = 0:120;
x_smoke    = 0:100;
x_light    = 0:1000;
x_humidity = 0:100;
x_distance = 0:80;
x_threat   = 0:100;

% Parámetros para mejorar la visualización de datos
width = 3;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 5;      % Fontsize
lw = 1.4;      % LineWidth
msz = 9;       % MarkerSize

x = x_temp;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@temp.low,x),'k-',x,arrayfun(@temp.medium,x),'k-',x,arrayfun(@temp.high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.15, 'L', 'clipping', 'off');
text(55, 1.15, 'M', 'clipping', 'off');
text(105, 1.15, 'H', 'clipping', 'off');
matlab2tikz('./output/b_temp_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_smoke;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@smoke.low,x),'k-',x,arrayfun(@smoke.medium,x),'k-',x,arrayfun(@smoke.high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.15, 'L', 'clipping', 'off');
text(45, 1.15, 'M', 'clipping', 'off');
text(90, 1.15, 'H', 'clipping', 'off');
matlab2tikz('./output/b_smoke_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_light;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@llight.low,x),'k-',x,arrayfun(@llight.medium,x),'k-',x,arrayfun(@llight.high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.15, 'L', 'clipping', 'off');
text(450, 1.15, 'M', 'clipping', 'off');
text(900, 1.15, 'H', 'clipping', 'off');
matlab2tikz('./output/b_light_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_humidity;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@humidity.low,x),'k-',x,arrayfun(@humidity.medium,x),'k-',x,arrayfun(@humidity.high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.15, 'L', 'clipping', 'off');
text(45, 1.15, 'M', 'clipping', 'off');
text(90, 1.15, 'H', 'clipping', 'off');
matlab2tikz('./output/b_humidity_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_distance;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@distance.close,x),'k-',x,arrayfun(@distance.medium,x),'k-',x,arrayfun(@distance.far,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.15, 'L', 'clipping', 'off');
text(38, 1.15, 'M', 'clipping', 'off');
text(75, 1.15, 'H', 'clipping', 'off');
matlab2tikz('./output/b_distance_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_threat;
figure;
set(gca, 'FontSize', 8, 'LineWidth', alw);
plot(x,arrayfun(@threat.very_low,x),'k-',x,arrayfun(@threat.low,x),'k-',x,arrayfun(@threat.medium,x),'k-',x,arrayfun(@threat.high,x),'k-',x,arrayfun(@threat.very_high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.15, 'VL', 'clipping', 'off');
text(22, 1.15, 'L', 'clipping', 'off');
text(45, 1.15, 'M', 'clipping', 'off');
text(72, 1.15, 'H', 'clipping', 'off');
text(92, 1.15, 'VH', 'clipping', 'off');
matlab2tikz('./output/b_threat_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');