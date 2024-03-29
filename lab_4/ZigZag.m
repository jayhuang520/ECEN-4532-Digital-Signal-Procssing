function [ outputMatrix ] = ZigZag( inputMatrix )
%cited from stackoverflow:
%http://stackoverflow.com/questions/3024939/matrix-zigzag-reordering

%This function will sort a 8x8 matrix into a 64x1 matrix 
%according to JPEG image compression
%First indices of elements
%nu4 matrix
ind = reshape(1:numel(inputMatrix),size(inputMatrix));
%flip the matrix left to right. Then use spdiags
%spdiags will get extract the diagional elements and then 
%flip the element left to right
ind = fliplr(spdiags(fliplr(ind)));

%reverse order of odd columns and flip that up to down
ind(:,1:2:end) = flipud(ind(:,1:2:end));
ind(ind==0) = [];

outputMatrix = inputMatrix(ind)';
end

