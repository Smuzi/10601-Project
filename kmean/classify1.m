function Y = classify1(Model, X)
    centroids = Model;
    testF = dataToFeatMatrix(X);
    Y = assign_clusters(centroids,testF);
    Y = transpose(Y);
end