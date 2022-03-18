function createfigure1(X1, Y1)
%CREATEFIGURE1(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 27-Jan-2022 10:39:44

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create semilogy
semilogy(X1,Y1,...
    'DisplayName','max_{\mu\in D}|g(\mu)-I_M[g(\mu)]|_{\infty}/|g(\mu)|_{\infty}',...
    'LineWidth',2,...
    'Color',[0.501960813999176 0.0274509806185961 0.0470588244497776]);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[1000 5000]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[1e-11 0.001]);
box(axes1,'on');
grid(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',15,'XTick',...
    [1000:5000:16000],'YMinorTick','on','YScale',...
    'log');
% Create legend
legend('max_{\mu\in D}|g(\mu)-I_M[g(\mu)]|_{\infty}/|g(\mu)|_{\infty}');
%set(legend1,'FontSize',15);

