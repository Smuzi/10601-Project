function [Y] = classify(Model, X)
% k nearest neighbors

F = Model.f;

trainY = Model.yTrain;
[n, d] = size(X);

Y = zeros(n, 1);
testF = dataToFeatMatrix(X);

for i = 1:n
    D = distance(transpose(F), transpose(testF(i,:)));
    [B, I] = sort(D);
    %[m, idx] = min(D);
    %Y(i) = trainY(idx);
    C = zeros(5,1);
    for j = 1:5
        C(j) = trainY(I(j));
    end
    Y(i) = mode(C);
end

end
