clear all
close all
clc

T=importdata('zero_one_classes_deep_features.xlsx');
C=T.data;


F0=C(422:end,:); %Minority Class
F1=C(1:421,:); %Majority Class

numEx0=80; %Minority Class
numEx1=421; %Majority Class

labels0 = false([numEx0 1]);
labels1 = true ([numEx1 1]);

adasyn_features                 = [F0; F1];
adasyn_labels                   = [labels0  ; labels1];
adasyn_beta                     = [];   %let ADASYN choose default
adasyn_kDensity                 = [];   %let ADASYN choose default
adasyn_kSMOTE                   = [];   %let ADASYN choose default
adasyn_featuresAreNormalized    = false;    %false lets ADASYN handle normalization

[out_featuresSyn, out_labelsSyn] = ADASYN(adasyn_features, adasyn_labels, adasyn_beta, adasyn_kDensity, adasyn_kSMOTE, adasyn_featuresAreNormalized);


