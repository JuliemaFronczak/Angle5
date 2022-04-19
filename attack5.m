close all; clear all; clc
%#########################################################################
%                                 Re 10^5
%#########################################################################
%/////////////////////////////////////////////////////////////////////////
% Vr vs Ymáx 
%/////////////////////////////////////////////////////////////////////////


A= [ 0 2 5 10 ];
Aa= [ 0  2 3 5 6 ];
% REFERENCIA Mannini et al.
CD = [1.05/5  1.13/5 1.24/5 1.45/5  1.62/5 ];
CL = [ -0.015  1.29 1.75 2.6 2.86];

% MEUS RESULTADOS 
cd= [ 0.21890 0.23772 0.34166 0.54358 ];
cl=[ 0.1066 1.0219 3.26 4.5251];
acm=[0 1 2 3 4 5 6];
% K. SHIMADA and T. ISHIHARA
CM=[ -0.07 -0.35 -0.67 -0.94 -1.05 -1.07 -1.06  ];
Cm=[ -0.0649 -0.7125 -0.5799 -0.3141 ];

% Gráfico
figure(1)
plot(Aa, CD,'r:d')
hold on
plot(A, cd,'k-o')
%hold on
%plot(A, Cd,'LineWidth',2)
grid on
xlabel('\alpha '), ylabel('C_{D}')
box off
leg = legend('Mannini et al. (2017)',' Fronczak (2021)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,10,0,2])
hold off

figure(2)
plot(Aa, CL,'r:d')
hold on
plot(A, cl,'k-o')
%hold on
%plot(A, Cl,'LineWidth',2)
grid on
xlabel('\alpha '), ylabel('C_{L}')
box off
leg = legend('Mannini et al. (2017)',' Fronczak (2021)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,10,-0.5,7])
hold off

figure(3)
plot(acm, CM,'r:d')
hold on
plot(A, Cm,'k-.o')

grid on
xlabel('\alpha (graus)'), ylabel('C_{m}')
box off
leg = legend('Manini et al. (2017)',' Fronczak (2021)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,10,-2,0.5])
hold off
%hold off
