function createfigure(xdata1, ydata1, zdata1,caso)
%CREATEFIGURE(XDATA1, YDATA1, ZDATA1)
%  XDATA1:  surface xdata
%  YDATA1:  surface ydata
%  ZDATA1:  surface zdata

%  Auto-generated by MATLAB on 01-Jul-2021 10:22:52

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create surf
surf(xdata1,ydata1,zdata1,'Parent',axes1);

% Create xlabel
xlabel('\sigma');

% Create ylabel
ylabel('\omega');

% Uncomment the following line to preserve the Z-limits of the axes
if(caso==0 || caso==1)zlim(axes1,[1e-10 5e-4]);end %vel
if(caso==2 || caso==3)zlim(axes1,[2e-9 5e-3]);end %vel
view(axes1,[-37.5 30]);
grid(axes1,'on');
% Set the remaining axes properties
set(axes1,'ZMinorTick','on','ZScale','log');
% Create colorbar
colorbar('peer',axes1);
if(caso==0)title('Estime for velocity and pressure');end
if(caso==1)title('Exact error between FE and RB for vel and pres');end
if(caso==2)title('Exact error between FE and RB for temp');end
if(caso==3)title('Estime for temperature');end
