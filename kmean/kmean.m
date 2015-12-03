function [centroids] = kmean(X,iterations)
    [rows,cols] = size(X);
    
    %choose 10 random rows to act as centroids - 10 classes
    random_vector = rand(10,1);
    seeds =random_vector*(rows-1);
    for i=1:10
        seeds(i) = int64(seeds(i));
    end
    initial_centroids = X(seeds,:);
    %assign to closest clusters
    new_clusters = assign_clusters(initial_centroids,X);
    
    %recalculate centroids based on new_clusters:
    centroids = recalculate_centroids(X,new_clusters,initial_centroids);
    for j = 1:iterations
        if mod(j,1000)==0
            j
        end
        new_clusters = assign_clusters(centroids,X);
        centroids = recalculate_centroids(X,new_clusters,centroids);
    
    end
    
    
end