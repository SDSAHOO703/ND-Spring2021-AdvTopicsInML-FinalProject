%% Clear Everything %%

clear all ;
close all ;
clc ;



%% Load All The Data Files %%

load('classes_and_pred_proba_ResNet50_MATLAB.csv') ; 
load('classes_and_pred_proba_MobileNetV2_MATLAB.csv') ; 
load('classes_and_pred_proba_InceptionV3_MATLAB.csv') ; 
load('classes_and_pred_proba_DenseNet121_MATLAB.csv') ; 



%% Horizontal Bar Plot (Mean FPS Values) %%

data_consolidated = [ classes_and_pred_proba_DenseNet121_MATLAB ...
                      classes_and_pred_proba_InceptionV3_MATLAB ...
                      classes_and_pred_proba_MobileNetV2_MATLAB ...
                      classes_and_pred_proba_ResNet50_MATLAB ...
                    ] ;
                
                
                 
%% Horizontal Bar Plot 

%%% Prediction Probabilities %%%
figure('DefaultAxesFontSize',16) 
set(0,'defaultTextInterpreter','latex');
X = categorical({'boat','building','cars','drones','group','horseride', ...
                 'paraglider','person','riding','trucks','wakeboard','whales'}) ;
X = reordercats(X,{'boat','building','cars','drones','group','horseride', ...
                   'paraglider','person','riding','trucks','wakeboard','whales'}) ;
vals = transpose(data_consolidated) ; 
b = barh(X,vals);
xlim([0.0 102]) ; 
ytickangle(45) ;
xlabel('Prediction Probabilities (\%)','Interpreter','latex','FontSize',20) ;
l1 = legend({'DenseNet121','InceptionV3','MobileNetV2','ResNet50'}, ...
             'Location','northeast','NumColumns',2) ;
title({'Prediction Probabilities of Different Classes','in Different Models'}, ...
      'Interpreter','latex','FontSize',25) ;
set(l1,'Interpreter','latex','FontSize',16) ;
set(gca,'Ydir','reverse','TickLabelInterpreter','latex','FontSize',20) ;





















