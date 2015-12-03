function [accuracy] = eval_prediction(labels,prediction)
    [length,~] = size(labels);
    true_positive = 0;
    for i=1:length
        if labels(i)==prediction(i)
            true_positive = true_positive+1;
        end
    end
    accuracy = true_positive/length;
        