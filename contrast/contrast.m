img = imread('scene_input.png');
fh1 = figure; imshow(img); title('Original');

img_gray = rgb2gray(img);

for i=3:size(img, 1)-2
    for j=3:size(img, 2)-2
        s = sum(sum(img_gray(i-2:i+2, j-2:j+2) - img_gray(i, j)));
        if s > 20
            img(i, j, 1) = img(i, j, 1) + (255-img(i, j, 1))*0.1;
            img(i, j, 2) = img(i, j, 2) + (255-img(i, j, 2))*0.1;
            img(i, j, 3) = img(i, j, 3) + (255-img(i, j, 3))*0.1;
        else
            img(i, j, 1) = img(i, j, 1)*0.9;
            img(i, j, 2) = img(i, j, 2)*0.9;
            img(i, j, 3) = img(i, j, 3)*0.9;
        end
    end
end


fh2 = figure; imshow(img);

imwrite(img, 'scene_output.png');