function [F] = dataToFeatMatrix(X)
    [rows,cols] = size(X);
    F = zeros(rows, 496);
    for i = 1:rows
       %fprintf('%i\n', i)
       img = vecToImg(X(i,:));
       feat = extract_feature(img);
       F(i,:) = transpose(feat);
    end
end
