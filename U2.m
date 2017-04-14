imagePath = 'D:\MATLAB\rgb';  % 图片存放路径
imageFiles = dir(imagePath);
numFiles = length(imageFiles);
for i=3:4                 % 从3开始，因为前两个是当前路径‘.’和上一级路径‘..’
    j = i-2;
    disp(j);
    imageFile = strcat(imagePath,imageFiles(i).name);
    A = imread(imageFile);
    B = imresize(A,[480 270]);      % resize为256x256
    imwrite(B,imageFile);           % 覆盖原始图片，若需要另存为，则修改此处的imageFile为新的存储路径
end
