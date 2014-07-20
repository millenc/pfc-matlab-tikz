x=150:0.1:230;
y=sigmf(x,[0.4 190]);
i=451;

% Parámetros para mejorar la visualización de datos
width = 3;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 11;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

figure(2);
pos = get(gcf, 'Position');
%set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
plot(x,y,'k-',[195],[0.88],'b*','LineWidth',lw,'MarkerSize',msz); %<- Specify plot properites
xlim([150 230]);
ylim([-0.1 1.1]);
legend('\mu_{VT}(\mu_{i})', 'Location', 'SouthEast');
xlabel('\mu_{i} - Altura en cm');
ylabel('\mu_{VT}(\mu_{i})');
text(x(i), 0.88, ['  \leftarrow (\mu_{i}=', num2str(x(i)), '; \mu_{VT}(195)=', num2str(y(i)), ')']);
matlab2tikz('./output/very-tall-fuzzyset-example.tikz','showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');