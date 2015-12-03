function [new_clusters] = assign_clusters(centroids,X)
    D = distance(transpose(centroids), transpose(X));
    new_clusters = [];
    [rows,~] = size(X);
    for i=1:rows
        distance_from_instance = transpose(D(:,i));
        [~,closest_cluster] = min(distance_from_instance);
        new_clusters = [new_clusters closest_cluster];
    end