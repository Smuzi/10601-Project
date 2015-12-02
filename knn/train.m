function [Model] = train(X, Y)
    F = dataToFeatMatrix(X);
    Model = struct('f', F, 'yTrain', Y);
end
