%% Clear Everything %%

clear all ;
close all ;
clc ;



%% Load The Data File %%

load('history_MobileNetV2_MATLAB.csv') ; 



%% Line Plot (Loss) %%

% Total No. of Epochs %
nEpochs = size(history_MobileNetV2_MATLAB, 1) ; 

% x-vector %
x = linspace(1,nEpochs,nEpochs) ;

%%% Loss Scores %%% 
figure('DefaultAxesFontSize',18) 
plot(x, history_MobileNetV2_MATLAB(:, 1), 'Color',[0 0.4470 0.7410], 'LineWidth', 1.1) ;  
hold on ;
plot(x, history_MobileNetV2_MATLAB(:, 3), 'Color','#D95319', 'LineWidth', 1.1) ;
yline(0.0) ;
set(gca,'TickLabelInterpreter','latex','FontSize',18) ;
l = legend('Training','Validation') ;
set(l,'Interpreter','latex','FontSize',18) ;
ylabel('Loss','Interpreter','latex','FontSize',20) ;
xlabel('No. of Epochs','Interpreter','latex','FontSize',20) ;
xlim([1 nEpochs]) ;
ylim([-0.1 10.5])
title('Loss v/s No. of Epochs for MobileNetV2','Interpreter','latex','FontSize',25) ;
set(gca, 'YGrid', 'on', 'XGrid', 'off') ;



%% Line Plot (Accuracy) %%

%%% Accuracy Scores %%% 
figure('DefaultAxesFontSize',18) 
plot(x, history_MobileNetV2_MATLAB(:, 2), 'Color',[0 0.4470 0.7410],'LineWidth', 1.1) ;  
hold on ;
plot(x, history_MobileNetV2_MATLAB(:, 4), 'Color','#D95319', 'LineWidth', 1.1) ;
yline(1.0) ;
set(gca,'TickLabelInterpreter','latex','FontSize',18) ;
l = legend('Training','Validation','Location','southeast') ;
set(l,'Interpreter','latex','FontSize',18) ;
ylabel('Accuracy','Interpreter','latex','FontSize',20) ;
xlabel('No. of Epochs','Interpreter','latex','FontSize',20) ;
xlim([1 nEpochs]) ;
ylim([0.25 1.01])
title('Accuracy v/s No. of Epochs for MobileNetV2','Interpreter','latex','FontSize',25) ;
set(gca, 'YGrid', 'on', 'XGrid', 'off') ;



