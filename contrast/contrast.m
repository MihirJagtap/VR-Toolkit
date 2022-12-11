img = imread('text.png');
fh1 = figure; imshow(img); title('Original');

img_gray = rgb2gray(img);

% imshow(img_gray);

for i=4:6:size(img, 1)-3
    for j=4:6:size(img, 2)-3
        minimum = min(min(img_gray(i-3:i+3, j-3:j+3)));
        maximum = max(max(img_gray(i-3:i+3, j-3:j+3)));
        if and((((maximum-minimum)*100)/minimum) < 10.0, maximum ~= minimum)
            img_lower = (maximum - img_gray(i-3:i+3, j-3:j+3)) > (img_gray(i-3:i+3, j-3:j+3) - minimum);
            for t=-3:3
                for l=-3:3
                   if img_lower(t+4, l+4) == 1
                       img(i+t, j+l, 1) = round(img(i+t, j+l, 1)*0.9);
                       img(i+t, j+l, 2) = round(img(i+t, j+l, 2)*0.9);
                       img(i+t, j+l, 3) = round(img(i+t, j+l, 3)*0.9);
                   else
                       img(i+t, j+l, 1) = round(img(i+t, j+l, 1)*1.1);
                       if img(i+t, j+l, 1) > 250
                           img(i+t, j+l, 1) = 255;
                       end
                       img(i+t, j+l, 2) = round(img(i+t, j+l, 2)*1.1);
                       if img(i+t, j+l, 2) > 250
                           img(i+t, j+l, 2) = 255;
                       end
                       img(i+t, j+l, 3) = round(img(i+t, j+l, 3)*1.1);
                       if img(i+t, j+l, 2) > 250
                           img(i+t, j+l, 3) = 255;
                       end
                   end
                end
            end
        end
    end
end

imshow(img);

img(:, :, 1) = medfilt2(img(:, :, 1));
img(:, :, 2) = medfilt2(img(:, :, 2));
img(:, :, 3) = medfilt2(img(:, :, 3));

fh2 = figure; imshow(img); title('Contrast');

saveas(fh2, 'contrast.png');
