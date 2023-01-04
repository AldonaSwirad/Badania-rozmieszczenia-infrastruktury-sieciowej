function parentNode = findParent(G, root_node, current_node , successors_list)
    current_path_length = length(shortestpath(G, current_node, root_node));
    for i = 1: length(successors_list)
        if length(shortestpath(G, successors_list(i), root_node)) < current_path_length
            parentNode = successors_list(i);
            break
        end
    end
end
