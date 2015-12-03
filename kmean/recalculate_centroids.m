function [new_centroids] = recalculate_centroids(X,new_clusters,prev_centroids)
    centroids = prev_centroids;
    for i=1:10
        relevant_rows = X(new_clusters==i,:);
        [size_of_cluster,~] = size(relevant_rows);
        sum_columns = sum(relevant_rows,1);
        centroids(i,:) = sum_columns/size_of_cluster;
    end
    new_centroids = centroids;
end
