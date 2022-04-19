close all; clear all; clc
%#########################################################################
%                                 Re 10^5
%#########################################################################
%/////////////////////////////////////////////////////////////////////////
% Vr vs Ymáx 
%/////////////////////////////////////////////////////////////////////////


A= [ 0 2 5 10 ];
Aa= [ 0 1 2 3 4 5 6 8 10 ];
% REFERENCIA Mannini et al.
CD = [1.05/5 1.09/5 1.149/5 1.25/5 1.39/5 1.52/5 1.63/5 1.81/5 2/5 ];
CL = [ -0.015/5 0.908/5 1.41/5 1.87/5 2.16/5 2.43/5 2.62/5 2.67/5 2.54/5];

% MEUS RESULTADOS SST  
cd= [ 0.21890 0.23772 0.34166 0.54358 ];
cl=[ 0.1066/5 1.0219/5 3.26/5 4.5251/5];
acm=[0 1 2 3 4 5 6];

% MEUS RESULTADOS SST LM
cdlm= [ 0.21710 0.23116 0.3219 0.64368 ];
cllm=[0.0644 0.19224 0.57524 1.58098 ];

% MEUS RESULTADOS epsilon
cdep= [ 0.21278 0.22052 0.26638 0.40552 ];
clep=[0.0055 0.2432 0.36228 0.61514 ];

% K. SHIMADA and T. ISHIHARA
CM=[ -0.07 -0.35 -0.67 -0.94 -1.05 -1.07 -1.06  ];
Cm=[ -0.0649 0.7125 0.5799 0.3141 ];

% Gráfico
figure(1)
plot(Aa, CD,'r-d')
hold on
plot(A, cdep,'k:o')
hold on
plot(A, cd,'b-.h')
hold on
plot(A, cdlm,'g--p')
%hold on
%plot(A, Cd,'LineWidth',2)
grid on
xlabel('\alpha '), ylabel('C_{D}')
box off
leg = legend('Mannini et al. (2017)', ' $k$-$\varepsilon$ ',' $k$-$\omega$ $SST$', ' $k$-$\omega$ $SST$ $LM$');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,10,0,1])
hold off

figure(2)
plot(Aa, CL,'r-d')
hold on
plot(A, clep,'k-.o')
hold on
plot(A, cl,'b:p')
hold on
plot(A, cllm,'g--h')
%hold on
%plot(A, Cl,'LineWidth',2)
grid on
xlabel('\alpha '), ylabel('C_{L}')
box off
leg = legend('Mannini et al. (2017)', ' $k$-$\varepsilon$ ',' $k$-$\omega$ $SST$', ' $k$-$\omega$ $SST$ $LM$');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,10,-0.5,2])
hold off


