function magnification(img_path)
    img = imread(img_path);
    imshow(img);
    mag = 0;
    while true
        [x, y] = ginput(1);
        x = round(x(1));
        y = round(y(1));
        if mag == 1
            img = imread(img_path);
            imshow(img);
            mag = 0;
            continue;
        end
        if or(x < 1, x > size(img, 2))
            continue;
        end
        if or(y < 1, y > size(img, 1))
            continue;
        end
        if y-100 < 1
            y = 101;
        end
        if y+100 > size(img, 1)
            y = size(img, 1)-100;
        end
        if x-100 < 1
            x = 101;
        end
        if x+100 > size(img, 2)
            x = size(img, 2)-100;
        end
        imshow(imresize(img(y-100:y+100, x-100:x+100, :), [1000 1000]));
        mag = 1;
    end
end