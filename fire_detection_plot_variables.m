clearvars;
addpath('../pfc-matlab/inferencia');
addpath('./src');

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
fsz = 9;      % Fontsize
lw = 1.4;      % LineWidth
msz = 9;       % MarkerSize

x = x_temp;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@temp.low,x),'k-',x,arrayfun(@temp.medium,x),'k-',x,arrayfun(@temp.high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.1, 'Baja (L)', 'clipping', 'off');
text(50, 1.1, 'Media (M)', 'clipping', 'off');
text(105, 1.1, 'Alta (H)', 'clipping', 'off');
matlab2tikz('./output/temp_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_smoke;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@smoke.low,x),'k-',x,arrayfun(@smoke.medium,x),'k-',x,arrayfun(@smoke.high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.1, 'Bajo (L)', 'clipping', 'off');
text(45, 1.1, 'Medio (M)', 'clipping', 'off');
text(90, 1.1, 'Alto (H)', 'clipping', 'off');
matlab2tikz('./output/smoke_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_light;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@light.low,x),'k-',x,arrayfun(@light.medium,x),'k-',x,arrayfun(@light.high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.1, 'Baja (L)', 'clipping', 'off');
text(450, 1.1, 'Media (M)', 'clipping', 'off');
text(900, 1.1, 'Alta (H)', 'clipping', 'off');
matlab2tikz('./output/light_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_humidity;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@humidity.low,x),'k-',x,arrayfun(@humidity.medium,x),'k-',x,arrayfun(@humidity.high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.1, 'Baja (L)', 'clipping', 'off');
text(45, 1.1, 'Media (M)', 'clipping', 'off');
text(90, 1.1, 'Alta (H)', 'clipping', 'off');
matlab2tikz('./output/humidity_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_distance;
figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
plot(x,arrayfun(@distance.close,x),'k-',x,arrayfun(@distance.medium,x),'k-',x,arrayfun(@distance.far,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.1, 'Cerca (L)', 'clipping', 'off');
text(35, 1.1, 'Media (M)', 'clipping', 'off');
text(70, 1.1, 'Lejos (H)', 'clipping', 'off');
matlab2tikz('./output/distance_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');

x = x_threat;
figure;
set(gca, 'FontSize', 8, 'LineWidth', alw);
plot(x,arrayfun(@threat.very_low,x),'k-',x,arrayfun(@threat.low,x),'k-',x,arrayfun(@threat.medium,x),'k-',x,arrayfun(@threat.high,x),'k-',x,arrayfun(@threat.very_high,x),'k-','LineWidth',lw,'MarkerSize',msz);
text(1, 1.1, 'VL', 'clipping', 'off');
text(25, 1.1, 'L', 'clipping', 'off');
text(50, 1.1, 'M', 'clipping', 'off');
text(75, 1.1, 'H', 'clipping', 'off');
text(95, 1.1, 'VH', 'clipping', 'off');
matlab2tikz('./output/threat_lang_variable.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');