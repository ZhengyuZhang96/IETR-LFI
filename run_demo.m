clc;close all;clear;

% add path
addpath('SVR\')
addpath('code\')
addpath(genpath('code\fdct_usfft_matlab'));

% load a distorted LFI (ID:R1A1S2) from the ITER-LFI database
dis_img_path = 'Demo_LFI\R1A1S2\';
dis_LF = uint8(zeros(9,9,434,625,3));
for x = 1:9
    for y = 1:9
        dis_LF_SAI = imread([dis_img_path,'\view_',num2str(x),'_',num2str(y),'.png']);
        dis_LF(x,y,:,:,:) = uint8(dis_LF_SAI);
    end
end
dis_LF = dis_LF(:,:,2:434,2:624,:); 

tic

% convert each SAI into grayscale
[U, V, H, W, ~] = size(dis_LF);
gray_dis_LF = zeros(U, V, H, W);
for u=1:U
    for v=1:V
        gray_dis_LF(u,v,:,:) = rgb2gray(squeeze(dis_LF(u,v,:,:,:)));
    end
end

% extract SAB features or SAB-light features
features = get_SAB_features(gray_dis_LF);
% features = get_SAB_light_features(gray_dis_LF);

% predict quality using the pretrained SVR model
load model_SAB
% load model_SAB_light
features_norm = normalization(features,-1,1,MAX,MIN);
[predict_score, ~, ~] = svmpredict(1, features_norm, model);
fprintf('The subjective quality score of the R1A1S2 LFI is 6.3947.\n');
fprintf('The predicted quality score of the R1A1S2 LFI is %4f.\n', predict_score);

toc





