function [] = net2txt(net, filename)

% a function to write the weights and biases of a neural network to a txt
% file

if class(net) ~= 'network'
    error('Class not supported.');
else
    L = net.numLayers;
    
    fileID = fopen(filename, 'a');
    
    % write weights and biases to file
    fprintf(fileID, '%f ', net.IW{1}');
    fprintf(fileID, '\n');
    fprintf(fileID, '%f ', net.b{1}');
    fprintf(fileID, '\n');
    for i = 2:L
        fprintf(fileID, '%f ', net.LW{i,i-1}');
        fprintf(fileID, '\n');
        fprintf(fileID, '%f ', net.b{i}');
        fprintf(fileID, '\n');
    end
    
    fclose(fileID);
    
end

