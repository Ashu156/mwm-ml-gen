function [ tag_names, features_names ] = browse_open_function(varargin)
%BROWSE_OPEN_FUNCTION

    %% load tags specified in "tags_list.m"
    try
        tags = tags_list;
        tag_names = cell(1,length(tags));
        for i=1:length(tags)
            tag_names{i} = tags{1,i}{1,1};
        end
    catch
        tag_names = {0};
    end   
    
    %% load features specified in "features_list.m"
    try
        features = features_list;
        features_names = cell(1,length(features));
        for i=1:length(features_names)
            features_names{i} = features{1,i}{1,1};
        end
    catch
        features_names = {0};
    end        
end

