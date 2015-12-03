function [Model] = train1(X, ~)
    F = dataToFeatMatrix(X);
    centroids = kmean(F,5000);
    Model = centroids;
end
