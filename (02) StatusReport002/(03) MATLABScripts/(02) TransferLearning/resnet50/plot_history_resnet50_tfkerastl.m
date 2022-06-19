%% Clear Everything %%

clear all ;
close all ;
clc ;



%% Load The Data File %%

load('history_ResNet50_TFKerasTL_MATLAB.csv') ; 



%% Line Plot (Accuracy Scores) %%

% Total No. of Epochs %

nEpochs = size(history_ResNet50_TFKerasTL_MATLAB, 1) ; 

% x-vector %
x = linspace(1,nEpochs,nEpochs) ;

%%% Accuracy Scores %%% 
figure('DefaultAxesFontSize',18) 
plot(x, history_ResNet50_TFKerasTL_MATLAB(:, 1), 'Color',[0 0.4470 0.7410],'LineWidth', 1.1) ;  
hold on ;
plot(x, history_ResNet50_TFKerasTL_MATLAB(:, 2), 'Color','#D95319', 'LineWidth', 1.1) ;
% yline(1.0) ;
set(gca,'TickLabelInterpreter','latex','FontSize',18) ;
l = legend('Training','Validation','Location','east') ;
set(l,'Interpreter','latex','FontSize',18) ;
ylabel('Accuracy','Interpreter','latex','FontSize',20) ;
xlabel('No. of Epochs','Interpreter','latex','FontSize',20) ;
xlim([1 nEpochs]) ;
%ylim([0.64 1.01])
title({'Accuracy v/s No. of Epochs for ResNet50','(Transfer Learning)'}, ...
      'Interpreter','latex','FontSize',25) ;
set(gca, 'YGrid', 'on', 'XGrid', 'off') ;








