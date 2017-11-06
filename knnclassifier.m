function preds=knnclassifier(xTr,yTr,xTe,k);
% function preds=knnclassifier(xTr,yTr,xTe,k);
%
% k-nn classifier 
%
% Input:
% xTr = dxn input matrix with n column-vectors of dimensionality d
% xTe = dxm input matrix with n column-vectors of dimensionality d
% k = number of nearest neighbors to be found
%
% Output:
%
% preds = predicted labels, ie preds(i) is the predicted label of xTe(:,i)
%


% output random result as default (you can erase this code)
%[d,n]=size(xTe);
%[d,ntr]=size(xTr);
%if k>ntr,k=ntr;end;

%currently assigning random predictions
%un=unique(yTr);
%preds=un(ceil(rand(1,n)*length(un)));

%% fill in code here
% [indices,dists]=findknn(xTr,xTe,k);
% [width,height] = size(indices);
% if (height == 1)
%     y_mat = yTr(indices)';
% else
%     y_mat = yTr(indices);
% end
% [preds , F , C] = mode(y_mat , 1);
% Clength = cellfun(@length , C);
% if (sum(Clength == 1) == 0)
%     preds = y_mat(1,:);
% end
while(true)
    [indices,dists]=findknn(xTr,xTe,k);
    [height,width] = size(indices);
    if (width == 1)
        y_mat = yTr(indices)';
    else
        y_mat = yTr(indices);
    end
    [preds , F , C] = mode(y_mat , 1);
    Clength = cellfun(@length , C);
    if (sum(Clength == 1) == width)
        break;
    end
    k = k - 1;
end
