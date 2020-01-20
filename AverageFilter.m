function AverageFilter()% function declaration
I = imread('Lena_noise.jpg'); % read the image 
%I = im2double(I);
[x,y] = size(I); % I 
%sum = [];

for i = 2:m-1
    for j = 2:y-1
        sum = 0;
        for ii = i-1:i+1  
            for jj = j-1:j+1
                sum = sum + I(ii,jj);
            end
        end
        %I2 = zero(3);
         %I2(i,j) = sum(sum/9);
        I2(i,j) = ceil(sum/9);
    end
end
imshow(I2);
imwrite(I2, 'AverageOutput.jpg')