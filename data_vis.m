clear;clc

% Training Set
morph_train = hdf5read('model_data_train.h5','X_train');
labs_train = hdf5read('model_data_train.h5','Y_train'); % load labels

% Validation Set
morph_valid = hdf5read('model_data_validation.h5','X_validation');
labs_valid = hdf5read('model_data_validation.h5','Y_validation'); % load labels

% Test Set
morph_test = hdf5read('model_data_test.h5','X_test');
labs_test = hdf5read('model_data_test.h5','Y_test'); % load labels

% mkdir('train_set');
% mkdir('valid_set');
% mkdir('test_set');

% for i = 1:size(morph_train, 4)
%     I1 = reshape(morph_train(1,:,:,i), [101, 101]);
%     imshow(I1)
%     imwrite(I1, ['train_set/' 'morph_train_' num2str(i) '.png'])
%     i
% end
% 
% for j = 1:size(morph_valid, 4)
%     I2 = reshape(morph_valid(1,:,:,j), [101, 101]);
%     imshow(I2)
%     imwrite(I2, ['valid_set/' 'morph_valid_' num2str(j) '.png'])
%     j
% end

for k = 1:size(morph_test, 4)
    I3 = reshape(morph_test(1,:,:,k), [101, 101]);
%     imshow(I3)
    imwrite(I3, ['test_set/' 'morph_test_' num2str(k) '.png'])
    k
end

