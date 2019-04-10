function [fitresult, gof] = createFit1(x, d)
%CREATEFIT1(X,D)
%  Create a fit.
%
%  Data for 'gaussBeamFit' fit:
%      X Input : x
%      Y Output: d
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 08-Mar-2019 15:10:37 自动生成


%% Fit: 'gaussBeamFit'.
[xData, yData] = prepareCurveData( x, d );

% Set up fittype and options.
ft = fittype( 'sqrt(d0^2+theta^2*(x-x0)^2)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.929263623187228 0.349983765984809 0.196595250431208];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
%figure( 'Name', 'gaussBeamFit' );
%h = plot( fitresult, xData, yData );
%legend( h, 'd vs. x', 'gaussBeamFit', 'Location', 'NorthEast' );
% Label axes
%xlabel x
%ylabel d
grid on


