
%This is lab 4 for ECEN 4532 Digital Signal Processing Lab:
%This is the main script for lab 4
clear all;close all;clc;

pathName = 'C:\Users\JayHuang\Documents\GitHub\ECEN-4532-Digital-Signal-Procssing\lab_4\images\images';
fileList = dir(fullfile(pathName,'*.pgm'));
fileName = dir('*.pgm');

f = imread('clown.pgm');
% figure,imagesc(f, [0 255]),colormap gray,axis square,axis off;
lossFactor = 20;
g = im2double(f);
[coeffMat,temp] = dctmgr(g,lossFactor);
outputImage = idctmgr(coeffMat,temp,lossFactor);
outputImage = im2uint8(outputImage);

figure,imagesc(outputImage, [0 255]),colormap gray,axis square,axis off;